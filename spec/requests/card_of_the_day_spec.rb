# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "Card of the Day", type: :request do
  let(:user) { create(:user) }

  before do
    login_user(user, password: "password")
  end

  context "when there is no card of the day" do
    it "creates a CardOfTheDay" do
      expect {
        get tarot_card_of_the_day_path
      }.to change { CardOfTheDay.count }.by(1)

      card_of_the_day = CardOfTheDay.last
      expect(card_of_the_day.user).to eq(user)
      expect(card_of_the_day.date_shown).to eq(Date.current)
      expect(card_of_the_day.tarot_card).to be_present
      expect(card_of_the_day.reversed).to_not be_nil
    end
  end

  context "when there is a card of the day for today" do
    let(:current_date) { Date.current }

    it "reuses the existing card of the day" do
      existing = CardOfTheDay.create!(
        user: user,
        tarot_card: TarotCard.random_card,
        reversed: true,
        date_shown: current_date
      )

      expect {
        get tarot_card_of_the_day_path
      }.not_to change { CardOfTheDay.count }

      # Reload from DB and ensure it's the same
      returned = CardOfTheDay.find_by(user: user, date_shown: current_date)
      expect(returned.id).to eq(existing.id)
    end
  end

  it "requires a logged-in user" do
    delete logout_path
    get tarot_card_of_the_day_path

    expect(response).to redirect_to(login_path)
  end
end
