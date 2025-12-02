class TarotController < ApplicationController
  before_action :require_login

  def index
    @card = TarotCard.all.sample
  end
end
