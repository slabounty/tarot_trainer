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

  def read_a_spread
    @spread = Spread.order("RANDOM()").first

    # Pick a random question for the spread
    spread_prompt = @spread.spread_prompts.order("RANDOM()").first
    @prompt = spread_prompt.prompt

    # Create the reading
    @reading = current_user.readings.create!(spread: @spread, spread_prompt: spread_prompt)

    # Pick the right number of cards
    @cards = TarotCard.random_cards(@spread.spread_positions.count)

    # Fetch ordered positions
    @positions = @spread.spread_positions.order(:position)

    # Create the join rows
    @positions.each_with_index do |pos, i|
      @reading.reading_cards.create!(
        tarot_card: @cards[i],
        spread_position: pos
      )
    end

    redirect_to reading_path(@reading)
  end
end
