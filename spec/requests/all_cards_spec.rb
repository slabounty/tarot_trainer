# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "All Cards", type: :request do
  let(:user) { create(:user) }
  let!(:major) { create(:suit, name: "Major Arcana") }
  let!(:wands) { create(:suit, name: "Wands") }
  let!(:pentacles) { create(:suit, name: "Pentacles") }
  let!(:cups) { create(:suit, name: "Cups") }
  let!(:swords) { create(:suit, name: "Swords") }
  let!(:cards) { [
    create(:tarot_card, name: "The Fool", suit: major),
    create(:tarot_card, name: "Ace of Cups", suit: cups),
    create(:tarot_card, name: "Ace of Wands", suit: wands),
    create(:tarot_card, name: "Ace of Swords", suit: swords),
    create(:tarot_card, name: "Ace of Pentacles", suit: pentacles)
  ] }

  before do
    login_user(user, password: "password")
  end

  it "shows the cards and their suits" do
    get tarot_all_cards_path

    # Make sure headers appear
    expect(response.body).to include("Major Arcana")
    expect(response.body).to include("Wands")
    expect(response.body).to include("Cups")
    expect(response.body).to include("Pentacles")
    expect(response.body).to include("Swords")

    # Count tarot card images
    doc = Nokogiri::HTML(response.body)
    images = doc.css('img[src*="tarot/"]')
    expect(images.count).to eq(TarotCard.count)
  end

  it "requires a logged-in user" do
    delete logout_path
    get tarot_all_cards_path

    expect(response).to redirect_to(login_path)
  end

  describe "favorites" do
    context "when a favorite hasn't been set" do
      it "shows the empty star" do
        get tarot_all_cards_path
        expect(response.body).to include(/☆/)
        expect(response.body).to_not include(/⭐/)
      end
    end

    context "when a favorite has been set" do
      before do
        create(:favorite,  user: user, tarot_card: cards[0])
      end

      it "shows the full star" do
        get tarot_all_cards_path
        expect(response.body).to include(/⭐/)
      end
    end
  end
end
