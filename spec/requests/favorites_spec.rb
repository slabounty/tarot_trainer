require 'rails_helper'

RSpec.describe "Favorites", type: :request do
  let(:user) { create(:user) }
  let(:card) { create(:tarot_card, name: "The Fool", meaning: "Fool meaning") }

  before do
    login_user(user, password: "password")
  end

  describe "POST /favorites" do
    it "creates a favorite for the user" do
      expect {
        post favorites_path, params: { tarot_card_id: card.id }
      }.to change(Favorite, :count).by(1)

      favorite = Favorite.last
      expect(favorite.user).to eq(user)
      expect(favorite.tarot_card).to eq(card)
    end
  end

  describe "DELETE /favorites/:id" do
    let!(:favorite) { create(:favorite, user: user, tarot_card: card) }

    it "removes the favorite" do
      expect {
        delete favorite_path(favorite)
      }.to change(Favorite, :count).by(-1)
    end
  end

  describe "GET /favorites" do
    context "when there's no favorites" do
      it "shows no favorites" do
        get favorites_path
        expect(response.body).to include("You haven’t favorited any cards yet.")
      end
    end

    context "when there are favorites" do
      before do
        create(:favorite, user: user, tarot_card: card)
      end

      it "shows the favorites" do
        get favorites_path
        expect(response.body).to include("The Fool")
        expect(response.body).to include("⭐")
      end
    end
  end
end
