# spec/requests/navbar_spec.rb
require "rails_helper"

RSpec.describe "Navbar visibility", type: :request do
  describe "navigation bar" do
    context "when not logged in" do
      it "shows Sign Up and Login buttons" do
        get root_path # any page that renders application layout

        expect(response.body).to include("Sign Up")
        expect(response.body).to include("Login")

        expect(response.body).not_to include("Explore Day")
        expect(response.body).not_to include("Card of the Day")
        expect(response.body).not_to include("Read a Spread")
        expect(response.body).not_to include("Logout")
      end
    end

    context "when logged in" do
      let!(:user) { User.create!(email: "test@example.com", password: "password") }

      it "shows the tarot buttons and Logout" do
        # Log the user in
        post login_path, params: { email: user.email, password: "password" }
        follow_redirect!

        get root_path

        expect(response.body).to include("Explore Day")
        expect(response.body).to include("Card of the Day")
        expect(response.body).to include("Read a Spread")
        expect(response.body).to include("Logout")

        expect(response.body).not_to include("Sign Up")
        expect(response.body).not_to include("Login")
      end
    end
  end
end
