# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "Card of the Day", type: :request do
  let(:user) { create(:user) }
  let!(:tarot_card) { create(:tarot_card) }

  before do
    login_user(user, password: "password")
  end

  context "when the user doesn't have a streak" do
    it "sets it to 1" do
      follow_redirect! # On to the dashboard
      user.reload
      expect(user.streak_count).to eq(1)
    end
  end

  context "when the user has a streak but it's the same day" do
    let(:streak_count) { 3 }
    let(:user) { create(:user, streak_count: streak_count, streak_last_date: Date.current) }

    it "leaves it the same" do
      follow_redirect! # On to the dashboard
      user.reload
      expect(user.streak_count).to eq(streak_count)
    end
  end

  context "when the user has a streak but it's the next day" do
    let(:streak_count) { 3 }
    let(:user) { create(:user, streak_count: streak_count, streak_last_date: Date.current - 1.day) }

    it "increments the streak count" do
      follow_redirect! # On to the dashboard
      user.reload
      expect(user.streak_count).to eq(streak_count+1)
    end
  end

  context "when the user has a streak but it's the days later" do
    let(:streak_count) { 3 }
    let(:user) { create(:user, streak_count: streak_count, streak_last_date: Date.current - 3.days) }

    it "sets it back to 1" do
      follow_redirect! # On to the dashboard
      user.reload
      expect(user.streak_count).to eq(1)
    end
  end
end
