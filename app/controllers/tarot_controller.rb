class TarotController < ApplicationController
  before_action :require_login

  def index
    @card = TarotCard.random_card
  end

  def card_of_the_day
    today = Date.current

    @card_of_day = current_user.card_of_the_days.find_or_create_by(date_shown: today) do |entry|
      entry.tarot_card = TarotCard.random_card
    end

    @card = @card_of_day.tarot_card
  end
end
