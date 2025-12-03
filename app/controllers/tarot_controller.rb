class TarotController < ApplicationController
  before_action :require_login

  def index
    @card = TarotCard.random_card
  end

  def card_of_the_day
    puts "current user = #{current_user.inspect}"
    @card = TarotCard.random_card
  end
end
