require "rails_helper"

RSpec.describe "Dashboard", type: :request do
  let(:user) { create(:user) }
  let!(:card) { create(:tarot_card, name: "The Fool", meaning: "Fool meaning", image_file: "test_card_image.png") }

  before do
    login_user(user, password: "password")
  end

  describe "GET /dashboard" do
    it "renders the quick action links" do
      get dashboard_path

      expect(response).to have_http_status(:ok)

      expect(response.body).to include("Quick Actions")

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
