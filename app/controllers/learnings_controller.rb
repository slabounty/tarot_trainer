# app/controllers/learnings_controller.rb
class LearningsController < ApplicationController
  before_action :require_login

  def new
    # just renders selection UI
  end

  def show
    @mode = params[:mode] || "all_cards"
    @reversed = ActiveModel::Type::Boolean.new.cast(params[:reversed])

    cards = case @mode
            when "major"
              TarotCard.major_arcana
            when "cups", "wands", "swords", "pentacles"
              TarotCard.joins(:suit).where(suits: { name: @mode.capitalize })
            else
              TarotCard.all
            end

    @card = cards.order("RANDOM()").first
  end
end
