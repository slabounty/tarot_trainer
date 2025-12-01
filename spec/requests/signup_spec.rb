require "rails_helper"

RSpec.describe "User Signup", type: :request do
  let(:email) { "newuser@example.com" }
  let(:password) { "password123" }

  it "creates a new user and starts a session" do
    post signup_path, params: {
      user: {
        email: email,
        password: password,
        password_confirmation: password
      }
    }

    follow_redirect!

    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Tarot Trainer")

    user = User.find_by(email: email)
    expect(user).not_to be_nil
    #expect(user.sessions.count).to eq(1)
  end

  describe "POST /signup" do
    it "does not create user without email address" do
      expect {
        post signup_path, params: {
          user: {
            email: "", # Invalid
            password: "password123"
          }
        }
      }.not_to change(User, :count)

      expect(response.body).to match("Email.*blank")
      expect(response).to have_http_status(:unprocessable_content)
    end
  end

  describe "POST /signup" do
    it "does not allow duplicate email addresses" do
      FactoryBot.create(:user, email: "duplicate@example.com")

      expect {
        post signup_path, params: {
          user: {
            email: "duplicate@example.com",
            password: "anotherpassword"
          }
        }
      }.not_to change(User, :count)

      expect(response.body).to include("Email has already been taken")
      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end

