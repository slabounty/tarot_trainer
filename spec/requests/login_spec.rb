require 'rails_helper'

RSpec.describe "User Login", type: :request do
  let(:email) { "test@example.com" }
  let!(:user) { User.create!(email: email, password: "password", password_confirmation: "password") }

  describe "POST /login" do
    it "logs in the user and redirects to user dashboard" do
      login_user(user, password: "password")

      expect(response).to redirect_to(dashboard_path)

      follow_redirect! # to user's dashboard

      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Welcome back")
      expect(response.body).to include("Quick Actions")
      expect(response.body).to include("Card of the Day")
    end
  end

  describe "POST /login wrong password" do
    let!(:user) { FactoryBot.create(:user, email: "test@example.com", password: "correctpassword") }

    it "fails with incorrect password and shows error message" do
      login_user(user, password: "wrong_password")

      expect(response.body).to include("Invalid email or password")
      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end
