# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "All Cards", type: :request do
  let(:user) { create(:user) }

  before do
    post login_path, params: { email: user.email, password: "password" }
  end

  it "shows the cards and their suits" do
    get tarot_all_cards_path

    # Make sure headers appear
    expect(response.body).to include("Major Arcana")
    expect(response.body).to include("Wands")
    expect(response.body).to include("Cups")
    expect(response.body).to include("Pentacles")
    expect(response.body).to include("Swords")

    # Count tarot card images
    doc = Nokogiri::HTML(response.body)
    images = doc.css('img[src*="tarot/"]')
    expect(images.count).to eq(78)
  end

  it "requires a logged-in user" do
    delete logout_path
    get tarot_all_cards_path

    expect(response).to redirect_to(login_path)
  end
end
