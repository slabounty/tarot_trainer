# spec/views/users/show_spec.rb
require 'rails_helper'

RSpec.describe "users/show.html.erb" do
  before do
    assign(:user, User.new(first_name: "Chris"))
  end

  it "displays the user's email" do
    render
    expect(rendered).to match(/Chris/)
  end

  it "has the Card of the Day link" do
    render
    expect(rendered).to have_link("Card of the Day")
  end

  it "has the Read a Spred link" do
    render
    expect(rendered).to have_link("Read a Spread")
  end
end
