# spec/views/users/show_spec.rb
require 'rails_helper'

RSpec.describe "users/new.html.erb" do
  before do
    assign(:user, User.new())
  end

  it "has the email field" do
    render
    expect(rendered).to have_field("Email")
  end

  it "has the password field" do
    render
    expect(rendered).to have_field("Password")
  end

  it "has the password confirmation field" do
    render
    expect(rendered).to have_field("Confirm Password")
  end

  it "has the first name field" do
    render
    expect(rendered).to have_field("First name")
  end

  it "has the last name field" do
    render
    expect(rendered).to have_field("Last name")
  end

  it "has the sign up button" do
    render
    expect(rendered).to have_button("Sign Up")
  end
end
