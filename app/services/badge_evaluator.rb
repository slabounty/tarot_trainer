# app/services/badge_evaluator.rb
class BadgeEvaluator
  def self.evaluate_streak(user)
    Badge
      .where("threshold <= ?", user.streak_count)
      .order(:threshold)
      .each do |badge|
        user.award_badge!(badge.key)
      end
  end
end
