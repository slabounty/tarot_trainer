class AddCardOfTheDayQuestionToTarotCard < ActiveRecord::Migration[8.1]
  def change
    add_column :tarot_cards, :card_of_the_day_question, :string
  end
end
