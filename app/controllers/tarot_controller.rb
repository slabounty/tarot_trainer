class TarotController < ApplicationController
  before_action :require_login

  def index
    @card = CARD_TEXT.keys.sample
    @card_info = CARD_TEXT[@card]
  end
end
