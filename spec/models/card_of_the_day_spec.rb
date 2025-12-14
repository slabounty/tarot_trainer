require 'rails_helper'

RSpec.describe CardOfTheDay, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:tarot_card) { FactoryBot.create(:tarot_card) }
  let(:today) { Date.current }
  let(:card_of_the_day) { FactoryBot.create(:card_of_the_day, user: user, tarot_card: tarot_card, date_shown: today) }

  it "has the date" do
    expect(card_of_the_day.date_shown).to eq(today)
  end

  it "has the user" do
    expect(card_of_the_day.user).to eq(user)
  end

  it "has the tarot_card" do
    expect(card_of_the_day.tarot_card).to eq(tarot_card)
  end
end
