class SplashController < ApplicationController
  def index
    @card = TarotCard.random_card
  end
end
