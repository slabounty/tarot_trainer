class SplashController < ApplicationController
  def index
    @card = TarotCard.all.sample
  end
end
