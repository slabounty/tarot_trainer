class SplashController < ApplicationController
  def index
    @card = CARD_TEXT.keys.sample
  end
end
