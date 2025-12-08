require "rails_helper"

RSpec.describe "Read a Spread", type: :request do
  let!(:user) { User.create!(email: "test@example.com", password: "password") }

  # Build a spread with prompts and positions
  let!(:spread) do
    s = Spread.create!(name: "Past / Present / Future")

    # positions
    s.spread_positions.create!(name: "Past", position: 1)
    s.spread_positions.create!(name: "Present", position: 2)
    s.spread_positions.create!(name: "Future", position: 3)

    # prompts
    s.spread_prompts.create!(prompt: "What should I understand about my current situation?")
    s.spread_prompts.create!(prompt: "What is ready to emerge in my life?")
    s
  end

  # Create 10 tarot cards to sample from
  let!(:cards) do
    (1..10).map do |i|
      TarotCard.create!(name: "Card #{i}", meaning: "Meaning #{i}", image_file: "test_card_image.png")
    end
  end

  before do
    # Stub randomness → always return our spread
    allow(Spread).to receive_message_chain(:order, :first).and_return(spread)

    # Stub card picker so it returns known cards
    allow(TarotCard).to receive(:random_cards).and_return(cards)

    # Log the user in using Rails 8 built-in auth
    post login_path, params: {
      email: user.email,
      password: "password"
    }
  end

  describe "GET /read_a_spread" do
    it "creates a reading with the chosen spread, prompt, and cards" do
      expect {
        get tarot_read_a_spread_path
      }.to change { Reading.count }.by(1)
        .and change { ReadingCard.count }.by(3) # 3 positions

      follow_redirect!

      reading = Reading.last

      # Spread assigned correctly
      expect(reading.spread).to eq(spread)

      # Prompt chosen randomly from the correct spread
      expect(spread.spread_prompts.map(&:prompt)).to include(reading.spread_prompt.prompt)

      # Cards assigned correctly
      expect(reading.reading_cards.count).to eq(3)

      # Every ReadingCard has a tarot_card and spread_position
      reading.reading_cards.each do |rc|
        expect(rc.tarot_card).to be_present
        expect(rc.spread_position).to be_present
      end

      # Response assigns the view instance variables
      expect(response.body).to include("Past")
      expect(response.body).to include("Present")
      expect(response.body).to include("Future")

      # Should show the prompt too
      expect(response.body).to include(reading.spread_prompt.prompt)
    end

    it "requires a logged-in user" do
      delete logout_path

      get tarot_read_a_spread_path
      expect(response).to redirect_to(login_path)
    end
  end
end
