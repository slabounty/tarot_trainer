class HomeController < ApplicationController
  def index
    @card = CARD_TEXT.keys.sample
    @card_info = CARD_TEXT[@card]
  end
end
