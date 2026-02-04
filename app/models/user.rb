# app/models/user.rb
class User < ApplicationRecord
  has_many :card_of_the_days, dependent: :destroy
  has_many :tarot_cards, through: :card_of_the_days
  has_many :readings, dependent: :destroy
  has_many :quizzes, dependent: :destroy

  has_many :user_badges, dependent: :destroy
  has_many :badges, through: :user_badges

  has_many :favorites
  has_many :favorite_cards, through: :favorites, source: :tarot_card

  has_secure_password
  validates :email, presence: true, uniqueness: true

    # call this any time the user performs a tarot action
    def update_tarot_streak!
      today = Date.current

      if streak_last_date == today
        return streak_count
      elsif streak_last_date == today - 1.day
        update!(
          streak_count: streak_count + 1,
          streak_last_date: today
        )
        BadgeEvaluator.evaluate_streak(self)
      else
        update!(
          streak_count: 1,
          streak_last_date: today
        )
      end

      streak_count
    end

    def award_badge!(key)
      badge = Badge.find_by!(key: key)

      user_badges.find_or_create_by!(badge: badge) do |ub|
        ub.earned_at = Time.current
      end
    end
end
