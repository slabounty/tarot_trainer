# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "Card of the Day", type: :request do
  let(:user) { create(:user) }
  let!(:cards) { TarotCard.order("RANDOM()").limit(5) }

  before do
    post login_path, params: { email: user.email, password: "password" }
  end

  it "creates a CardOfTheDay for today if none exists" do
    expect {
      get tarot_card_of_the_day_path
    }.to change { CardOfTheDay.count }.by(1)

    record = CardOfTheDay.last
    expect(record.user).to eq(user)
    expect(record.date_shown).to eq(Date.current)
    expect(record.tarot_card).to be_present
  end

  it "reuses the existing CardOfTheDay for today" do
    existing = CardOfTheDay.create!(
      user: user,
      tarot_card: cards.first,
      date_shown: Date.current
    )

    expect {
      get tarot_card_of_the_day_path
    }.not_to change { CardOfTheDay.count }

    # Reload from DB and ensure it's the same
    returned = CardOfTheDay.find_by(user: user, date_shown: Date.current)
    expect(returned.id).to eq(existing.id)
  end

  it "requires a logged-in user" do
    delete logout_path
    get tarot_card_of_the_day_path

    expect(response).to redirect_to(login_path)
  end
end
