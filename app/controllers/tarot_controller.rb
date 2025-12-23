class TarotController < ApplicationController
  before_action :require_login

  def explore
    current_user.update_tarot_streak!

    @card = TarotCard.random_card
  end

  def card_of_the_day
    current_user.update_tarot_streak!

    today = Date.current

    @card_of_day = current_user.card_of_the_days.find_or_create_by(date_shown: today) do |entry|
      entry.tarot_card = TarotCard.random_card
      entry.reversed = Random.rand < 0.5 ? true : false
    end

    @card = @card_of_day.tarot_card
    @reversed = @card_of_day.reversed
  end

  def read_a_spread
    current_user.update_tarot_streak!

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

  def all_cards
    current_user.update_tarot_streak!

    suit_order = [
      "Major Arcana",
      "Cups",
      "Pentacles",
      "Swords",
      "Wands"
    ]

    @cards = TarotCard
      .includes(:suit)
      .joins(:suit)
      .order(
        Arel.sql(<<~SQL),
          CASE suits.name
            WHEN 'Major Arcana' THEN 1
            WHEN 'Cups' THEN 2
            WHEN 'Pentacles' THEN 3
            WHEN 'Swords' THEN 4
            WHEN 'Wands' THEN 5
            ELSE 6
          END
        SQL
        :order
      )
      .group_by(&:suit)
  end
end
