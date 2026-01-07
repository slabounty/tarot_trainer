# spec/requests/card_of_the_day_spec.rb
require 'rails_helper'

RSpec.describe "Explore the Tarot", type: :request do
  let(:user) { create(:user) }
  let!(:tarot_card) { create(:tarot_card) }

  before do
    login_user(user, password: "password")
  end

  it "shows a card" do
    get tarot_explore_path

    expect(response.body).to include("Explore the Tarot")
    expect(response.body).to include("Name")
    expect(response.body).to include("Meaning")
    expect(response.body).to include("Reversed Meaning")
    expect(response.body).to include("Arcana")
    expect(response.body).to include("Element")
  end

  it "requires a logged-in user" do
    delete logout_path
    get tarot_explore_path

    expect(response).to redirect_to(login_path)
  end
end
