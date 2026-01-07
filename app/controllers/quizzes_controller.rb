class QuizzesController < ApplicationController
  before_action :require_login

  QUESTIONS_COUNT = 5
  OPTIONS_PER_QUESTION = 5

  def index
    # Optional — can be removed if unused
    @quizzes = current_user.quizzes.order(created_at: :desc)
  end

  def create
    quiz = current_user.quizzes.create!

    tarot_cards = TarotCard.includes(:suit).all.to_a

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

    puts "\n\n\nQuizzesController#grade total_questions = #{@total_questions} percentage = #{@score_percentage}\n\n\n"

    render :results
  end
end
