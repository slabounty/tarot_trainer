# spec/services/badge_evaluator_spec.rb
require 'rails_helper'

RSpec.describe BadgeEvaluator do
  describe ".evaluate_streak" do
    let(:user) { create(:user, streak_count: 3) }

    let!(:three_day_badge) do
      create(
        :badge,
        key: "three_day_streak",
        threshold: 3
      )
    end

    it "awards the 3-day streak badge" do
      expect {
        described_class.evaluate_streak(user)
      }.to change {
        user.user_badges.count
      }.by(1)

      expect(user.badges.pluck(:key)).to include("three_day_streak")
    end
  end
end
