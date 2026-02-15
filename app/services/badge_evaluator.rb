# app/services/badge_evaluator.rb
class BadgeEvaluator
  def self.evaluate_streak(user)
    Badge
      .where(category: "daily_streak")
      .where("threshold <= ?", user.streak_count)
      .order(:threshold)
      .each do |badge|
        user.award_badge!(badge.key)
      end
  end

  def self.evaluate_quizzes(user)
    quiz_count = user.quizzes.count

    Badge
      .where(category: "quiz")
      .where("threshold <= ?", quiz_count)
      .order(:threshold)
      .each do |badge|
        user.award_badge!(badge.key)
      end
  end

  def self.evaluate_quiz_percentages(user, score)
    Badge
      .where(category: "quiz_percentage")
      .where("threshold <= ?", score)
      .order(:threshold)
      .each do |badge|
        user.award_badge!(badge.key)
      end
  end
end
