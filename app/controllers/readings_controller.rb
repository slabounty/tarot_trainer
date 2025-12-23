class ReadingsController < ApplicationController
  before_action :require_login

  def show
    @reading = current_user.readings.find(params[:id])
    @spread = @reading.spread
    @prompt = @reading.spread_prompt&.prompt
    reading_cards = @reading.reading_cards
    @cards = reading_cards.includes(:tarot_card, :spread_position).map(&:tarot_card)
    @reversed = reading_cards.map(&:reversed)
    @positions = @reading.spread.spread_positions.order(:position)
  end

  def update
    @reading = current_user.readings.find(params[:id])
    @reading.update!(user_input: params[:reading][:user_input])

    redirect_to reading_path(@reading), notice: "Your interpretation was saved!"
  end
end
