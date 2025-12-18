class UsersController < ApplicationController
  before_action :redirect_if_logged_in, only: [ :new, :create ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboard_path, notice: "Signed up successfully!"
    else
      render :new, status: :unprocessable_content
    end
  end

  def dashboard
    @user = current_user

    @user.update_tarot_streak!

    @streak = current_user.streak_count

    today = Date.current
    @card_of_the_day = current_user.card_of_the_days.find_or_create_by(date_shown: today) do |entry|
      entry.tarot_card = TarotCard.random_card
    end

    @recent_readings = current_user.readings
                                   .includes(:spread, :spread_prompt)
                                   .order(created_at: :desc)
                                   .limit(3)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end
