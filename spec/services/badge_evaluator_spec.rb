# spec/services/badge_evaluator_spec.rb
require 'rails_helper'

RSpec.describe BadgeEvaluator do
  describe ".evaluate_streak" do
    let!(:three_day_badge) do
      create(
        :badge,
        key: "three_day_streak",
        category: "daily_streak",
        threshold: 3
      )
    end

    context "when the user has enough for the streak" do
      let(:user) { create(:user, streak_count: 2) }

      it "awards the 3-day streak badge" do
        expect {
          described_class.evaluate_streak(user)
        }.to change {
          user.user_badges.count
        }.by(0)
      end
    end

    context "when the user has enough for the streak" do
      let(:user) { create(:user, streak_count: 3) }

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

  describe ".evaluate_quizzes" do
    let(:user) { create(:user) }
    let!(:q1) { create(:quiz, user: user) }
    let!(:q2) { create(:quiz, user: user) }

    let!(:three_day_badge) do
      create(
        :badge,
        key: "three_quiz_mastery",
        category: "quiz",
        threshold: 3
      )
    end

    context "when the user does not have enough quizzes" do
      it "does not award the badge" do
        expect {
          described_class.evaluate_quizzes(user)
        }.to change {
          user.user_badges.count
        }.by(0)
      end
    end

    context "when the user has enough quizzes" do
      let!(:q3) { create(:quiz, user: user) }

      it "awards the 3-day streak badge" do
        expect {
          described_class.evaluate_quizzes(user)
        }.to change {
          user.user_badges.count
        }.by(1)

        expect(user.badges.pluck(:key)).to include("three_quiz_mastery")
      end
    end
  end

  describe ".evaluate_quiz_percentages" do
    let(:user) { create(:user) }
    let!(:q1) { create(:quiz, user: user) }

    let!(:three_day_badge) do
      create(
        :badge,
        key: "100 percent quiz",
        category: "quiz_percentage",
        threshold: 100
      )
    end

    context "when the user does not score high enough" do
      it "does not award the badge" do
        expect {
          described_class.evaluate_quiz_percentages(user, 80)
        }.to change {
          user.user_badges.count
        }.by(0)
      end
    end

    context "when the user has scores 100" do
      let!(:q3) { create(:quiz, user: user) }

      it "awards the 100 percent quiz badge" do
        expect {
          described_class.evaluate_quiz_percentages(user, 100)
        }.to change {
          user.user_badges.count
        }.by(1)

        expect(user.badges.pluck(:key)).to include("100 percent quiz")
      end
    end
  end
end
