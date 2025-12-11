require 'rails_helper'

RSpec.describe "ReadingsController", type: :request do
  describe "GET /readings/:id" do
    let(:user)   { create(:user) }
    let(:spread) { create(:spread, description: "Spread Description") }
    let(:reading) { create(:reading, user: user, spread: spread, user_input: "Some user input") }

    # Create positions and cards for the reading
    let(:position1) { create(:spread_position, spread: spread, position: 1, name: "Past") }
    let(:position2) { create(:spread_position, spread: spread, position: 2, name: "Future") }

    before do
      create(:reading_card, reading: reading, spread_position: position1)
      create(:reading_card, reading: reading, spread_position: position2)
    end

    context "when the user is not logged in" do
      it "redirects to login" do
        get reading_path(reading)
        expect(response).to redirect_to(login_path)
      end
    end

    context "when logged in" do
      before { post login_path, params: { email: user.email, password: "password" } }

      it "loads the reading successfully" do
        get reading_path(reading)

        expect(response).to have_http_status(:ok)
        expect(response.body).to include(spread.name)
        expect(response.body).to include(reading.user_input)
        expect(response.body).to include(position1.name)
        expect(response.body).to include(position2.name)
      end
    end
  end

  describe "PATCH /readings/:id" do
    let(:user) { create(:user) }
    let(:reading) { create(:reading, user: user, user_input: nil) }

    before do
      post login_path, params: { email: user.email, password: "password" }
    end

    it "updates the reading and redirects back" do
      patch reading_path(reading), params: {
        reading: { user_input: "My interpretation" }
      }

      expect(response).to redirect_to(reading_path(reading))
      follow_redirect!

      expect(response.body).to include("Your interpretation was saved!")

      expect(reading.reload.user_input).to eq("My interpretation")
    end
  end
end
