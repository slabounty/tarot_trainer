class UsersController < ApplicationController
  before_action :redirect_if_logged_in, only: [ :new, :create ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_home_path, notice: "Signed up successfully!"
      #redirect_to tarot_index_path, notice: "Signed up successfully!"
    else
      render :new, status: :unprocessable_content
    end
  end

  def show
    #puts "user id = #{session[:user_id]}"
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end
