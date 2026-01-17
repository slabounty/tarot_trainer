require 'rails_helper'

RSpec.describe "LearningsController", type: :request do
  let(:user)   { create(:user) }
  let!(:major) { create(:suit, name: "Major Arcana") }
  let!(:wands) { create(:suit, name: "Wands") }
  let!(:pentacles) { create(:suit, name: "Pentacles") }
  let!(:cups) { create(:suit, name: "Cups") }
  let!(:swords) { create(:suit, name: "Swords") }
  let!(:cards) { [
    create(:tarot_card, name: "The Fool", suit: major, meaning: "Fool meaning", arcana: "Major"),
    create(:tarot_card, name: "Ace of Cups", suit: cups, meaning: "Cups meaning"),
    create(:tarot_card, name: "Ace of Wands", suit: wands, meaning: "Wands meaning"),
    create(:tarot_card, name: "Ace of Swords", suit: swords, meaning: "Swords meaning"),
    create(:tarot_card, name: "Ace of Pentacles", suit: pentacles, meaning: "Pentacles meaning")
  ] }

  describe "GET /quizzes/new" do
    before do
      login_user(user, password: "password")
    end

    it "takes the user to the quizzes page" do
      get new_learning_path
      expect(response.body).to include("Learning Mode")
      expect(response.body).to include("Choose cards")
      expect(response.body).to include("Start Learning")
    end
  end

  describe "GET /learning" do
    before do
      login_user(user, password: "password")
    end

    it "goes to the learning page" do
      get learning_path(mode: "all_cards")

      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Learn the Tarot")
    end

    context "when the mode is major" do
      it "shows the major card" do
        get learning_path(mode: "major")

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("The Fool")
      end
    end

    context "when the mode is cups" do
      it "shows the cups card" do
        get learning_path(mode: "cups")

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("Ace of Cups")
      end
    end

    context "when the mode is wands" do
      it "shows the wands card" do
        get learning_path(mode: "wands")

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("Ace of Wands")
      end
    end

    context "when the mode is swords" do
      it "shows the swords card" do
        get learning_path(mode: "swords")

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("Ace of Swords")
      end
    end

    context "when the mode is pentacles" do
      it "shows the pentacles card" do
        get learning_path(mode: "pentacles")

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("Ace of Pentacles")
      end
    end
  end
end
