class FavoritesController < ApplicationController
  before_action :require_login

  def create
    favorite = current_user.favorites.create!(
      tarot_card_id: params[:tarot_card_id]
    )

    redirect_to tarot_all_cards_path(anchor: params[:anchor])

  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy

    redirect_to tarot_all_cards_path(anchor: params[:anchor])
  end
end

