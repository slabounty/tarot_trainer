class QuizzesController < ApplicationController
  before_action :require_login

  QUESTIONS_COUNT = 5
  OPTIONS_PER_QUESTION = 5

  def new
  end

  def create
    quiz_type = params[:quiz_type] || "all_cards"

    quiz = current_user.quizzes.create!(
      quiz_type: quiz_type
    )

    tarot_cards =
      case quiz_type
      when "all_cards"
        TarotCard.includes(:suit).all
      when "major"
        TarotCard.includes(:suit).where(suits: { name: "Major Arcana" })
      when "wands"
        TarotCard.includes(:suit).where(suits: { name: "Wands" })
      when "swords"
        TarotCard.includes(:suit).where(suits: { name: "Swords" })
      when "cups"
        TarotCard.includes(:suit).where(suits: { name: "Cups" })
      when "pentacles"
        TarotCard.includes(:suit).where(suits: { name: "Pentacles" })
      end

    tarot_cards = tarot_cards.to_a

    QUESTIONS_COUNT.times do
      correct_card = tarot_cards.sample

      question = quiz.quiz_questions.create!

      # pick wrong answers
      wrong_cards = tarot_cards
        .reject { |c| c.id == correct_card.id }
        .sample(OPTIONS_PER_QUESTION - 1)

      options = (wrong_cards + [ correct_card ]).shuffle

      options.each do |card|
        question.quiz_options.create!(
          tarot_card: card,
          correct: card.id == correct_card.id
        )
      end
    end

    redirect_to quiz_path(quiz)
  end

  def show
    @quiz = current_user.quizzes
      .includes(quiz_questions: { quiz_options: :tarot_card })
      .find(params[:id])
  end

  def grade
    @quiz = Quiz.includes(quiz_questions: :quiz_options).find(params[:id])
    answers = params[:answers] || {}

    @results = {}
    @correct_count = 0

    answers.each do |question_id, option_id|
      question = @quiz.quiz_questions.find(question_id)
      selected_option = question.quiz_options.find(option_id)

      correct = selected_option.correct?
      @correct_count += 1 if correct

      @results[question_id.to_i] = {
        selected_option: selected_option,
        correct_option: question.quiz_options.find_by(correct: true),
        correct: correct
      }
    end

    @total_questions = @quiz.quiz_questions.count
    @score_percentage = ((@correct_count.to_f / @total_questions) * 100).round

    # Save the quiz score
    @quiz.score = @score_percentage
    @quiz.save!

    # Update quiz streak
    BadgeEvaluator.evaluate_quizzes(current_user)

    render :results
  end
end
