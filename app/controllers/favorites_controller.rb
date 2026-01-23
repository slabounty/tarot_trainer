class FavoritesController < ApplicationController
  before_action :require_login

  def index
    @user = current_user
    @favorites = @user.favorites.includes(:tarot_card)
  end

  def create
    current_user.favorites.create!(
      tarot_card_id: params[:tarot_card_id]
    )

    redirect_back_or_to_all_cards
  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy

    redirect_back_or_to_all_cards
  end

  private

  def redirect_back_or_to_all_cards
    if params[:return_to].present?
      redirect_to params[:return_to]
    elsif params[:anchor].present?
      redirect_to "#{tarot_all_cards_path}##{params[:anchor]}"
    else
      redirect_to tarot_all_cards_path
    end
  end
end
