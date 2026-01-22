require 'rails_helper'

RSpec.describe "Favorites", type: :request do
  let(:user) { create(:user) }
  let(:card) { create(:tarot_card) }

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
end
