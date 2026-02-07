require "rails_helper"

RSpec.describe "Dashboard", type: :request do
  let(:user) { create(:user, streak_count: 3, first_name: "Bobby") }
  let!(:card) { create(:tarot_card, name: "The Fool", meaning: "Fool meaning", image_file: "test_card_image.png") }
  let!(:three_day_badge) do
    create(
      :badge,
      key: "three_day_streak",
      category: "daily_streak",
      name: "The Streak Badge",
      description: "Three Day Streak",
      threshold: 3
    )
  end
  let!(:user_badge) { create(:user_badge, user: user, badge: three_day_badge) }

  let!(:three_day_quiz_badge) do
    create(
      :badge,
      key: "three_quiz_mastery",
      category: "quiz",
      name: "The Quiz Badge",
      description: "Three Quizzes",
      threshold: 3
    )
  end
  let!(:user_quiz_badge) { create(:user_badge, user: user, badge: three_day_quiz_badge) }

  before do
    login_user(user, password: "password")
  end

  describe "GET /dashboard" do
    it "renders the quick action links" do
      get dashboard_path

      expect(response).to have_http_status(:ok)

      #expect(response.body).to include("Welcome back, Bobby")

      expect(response.body).to include("Your Badges")
      expect(response.body).to include("The Streak Badge")
      expect(response.body).to include("Three Day Streak")
      expect(response.body).to include("The Quiz Badge")
      expect(response.body).to include("Three Quizzes")

      expect(response.body).to include("Quick Actions")
      expect(response.body).to include("Card of the Day")
      expect(response.body).to include("Recent Readings")
      expect(response.body).to include("Recent Quizzes")

      expect(response.body).to include(
        %(href="#{tarot_card_of_the_day_path}")
      )

      expect(response.body).to include(
        %(href="#{tarot_read_a_spread_path}")
      )

      expect(response.body).to include(
        %(href="#{tarot_all_cards_path}")
      )

      expect(response.body).to include(
        %(href="#{new_quiz_path}")
      )

      expect(response.body).to include(
        %(href="#{new_learning_path}")
      )

      expect(response.body).to include(
        %(href="#{favorites_path}")
      )
    end
  end
end
