require 'rails_helper'

RSpec.describe "User Login", type: :request do
  let(:email) { "test@example.com" }
  let!(:user) { User.create!(email: email, password: "password", password_confirmation: "password") }

  describe "POST /login" do
    it "logs in the user and redirects to user home" do
      post login_path, params: {
        email: "test@example.com",
        password: "password"
      }

      expect(response).to redirect_to(tarot_index_path)

      follow_redirect!
      expect(response.body).to include("Tarot Trainer")
    end
  end

  describe "POST /login wrong password" do
    let!(:user) { FactoryBot.create(:user, email: "test@example.com", password: "correctpassword") }

    it "fails with incorrect password and shows error message" do
      post login_path, params: {
        email: "test@example.com",
        password: "wrongpassword"
      }

      expect(response.body).to include("Invalid email or password")
      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end
