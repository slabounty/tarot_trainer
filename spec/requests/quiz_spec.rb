require 'rails_helper'

RSpec.describe "QuizController", type: :request do
  let(:user)   { create(:user) }
  let!(:major) { create(:suit, name: "Major Arcana") }
  let!(:wands) { create(:suit, name: "Wands") }
  let!(:pentacles) { create(:suit, name: "Pentacles") }
  let!(:cups) { create(:suit, name: "Cups") }
  let!(:swords) { create(:suit, name: "Swords") }
  let!(:cards) { [
    create(:tarot_card, name: "The Fool", suit: major, meaning: "Fool meaning"),
    create(:tarot_card, name: "Ace of Cups", suit: cups, meaning: "Cups meaning"),
    create(:tarot_card, name: "Ace of Wands", suit: wands, meaning: "Wands meaning"),
    create(:tarot_card, name: "Ace of Swords", suit: swords, meaning: "Swords meaning"),
    create(:tarot_card, name: "Ace of Pentacles", suit: pentacles, meaning: "Pentacles meaning")
  ] }

  describe "GET /quizzes/new" do
    before do
      login_user(user, password: "password")
    end

    it "takes the user to the quizzes page" do
      get new_quiz_path
      expect(response.body).to include("Tarot Quiz")
      expect(response.body).to include("Choose a quiz type")
      expect(response.body).to include("Start Quiz")
    end
  end

  describe "POST /quizzes" do
    before do
      login_user(user, password: "password")
    end

    it "creates a quiz and redirects to the quiz show page" do
      expect {
        post quizzes_path, params: { quiz_type: "all" }
      }.to change(Quiz, :count).by(1)

      quiz = Quiz.last

      expect(response).to redirect_to(quiz_path(quiz))
      follow_redirect!

      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Tarot Quiz")
    end

    it "creates quiz questions and options" do
      post quizzes_path, params: { quiz_type: "all" }

      quiz = Quiz.last

      expect(quiz.quiz_questions.count).to be > 0

      quiz.quiz_questions.each do |question|
        expect(question.quiz_options.count).to be >= 2
        expect(question.quiz_options.any?(&:correct?)).to be(true)
      end
    end

    it "respects the selected quiz type" do
      post quizzes_path, params: { quiz_type: "major_arcana" }

      quiz = Quiz.last

      tarot_cards =
        quiz.quiz_questions.flat_map do |q|
          q.quiz_options.map(&:tarot_card)
        end.uniq

      tarot_cards.each do |card|
        expect(card.suit.name).to eq("Major Arcana")
      end
    end
  end

  describe "Quiz grading", type: :request do
    let(:user) { create(:user) }

    before do
      login_user(user, password: "password")
    end

    describe "POST /quizzes/:id/grade" do
      let!(:quiz) { create(:quiz, user: user) }

      let!(:question_1) { create(:quiz_question, quiz: quiz) }
      let!(:question_2) { create(:quiz_question, quiz: quiz) }

      let!(:correct_option_1) do
        create(:quiz_option, quiz_question: question_1, correct: true, tarot_card: cards[0])
      end

      let!(:wrong_option_1) do
        create(:quiz_option, quiz_question: question_1, correct: false, tarot_card: cards[1])
      end

      let!(:correct_option_2) do
        create(:quiz_option, quiz_question: question_2, correct: true, tarot_card: cards[2])
      end

      let!(:wrong_option_2) do
        create(:quiz_option, quiz_question: question_2, correct: false, tarot_card: cards[3])
      end

      it "grades the quiz and renders the results page" do
        post grade_quiz_path(quiz), params: {
          answers: {
            question_1.id => correct_option_1.id,
            question_2.id => wrong_option_2.id
          }
        }

        expect(response).to have_http_status(:ok)
        expect(response.body).to include("Quiz Results")
        expect(response.body).to include("You scored")
      end

      it "calculates the correct score" do
        post grade_quiz_path(quiz), params: {
          answers: {
            question_1.id => correct_option_1.id,
            question_2.id => wrong_option_2.id
          }
        }

        expect(response.body).to include("Quiz Results")
        expect(response.body).to match(/You scored.*1.*out of.*.*2.*50%/m)
      end

      it "shows correct and incorrect answers" do
        post grade_quiz_path(quiz), params: {
          answers: {
            question_1.id => wrong_option_1.id,
            question_2.id => correct_option_2.id
          }
        }

        expect(response.body).to include(correct_option_2.tarot_card.meaning)
        expect(response.body).to include(correct_option_1.tarot_card.meaning)
      end
    end
  end
end
