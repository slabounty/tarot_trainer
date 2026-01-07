require "rails_helper"

RSpec.describe "User Logout", type: :request do
  let!(:tarot_card) { create(:tarot_card) }

  before do
    @user = signup_and_login
  end

  it "logs the user out and clears session" do
    delete logout_path

    expect(response).to redirect_to(root_path)
    follow_redirect!

    # Try to access user_home again — it should redirect to login
    get tarot_explore_path
    expect(response).to redirect_to(login_path)
  end
end
