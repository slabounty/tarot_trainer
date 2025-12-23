module AuthHelpers
  def signup_and_login(email: "user@example.com", password: "password123")
    post signup_path, params: {
      user: {
        email: email,
        password: password,
        password_confirmation: password
      }
    }
    follow_redirect!
    User.find_by(email: email)
  end

  def login_user(user, password: "password123")
    post login_path, params: {
      email: user.email,
      password: password
    }
  end
end
