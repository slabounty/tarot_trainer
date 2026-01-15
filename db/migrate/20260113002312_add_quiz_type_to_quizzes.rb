class AddQuizTypeToQuizzes < ActiveRecord::Migration[8.1]
  def change
    add_column :quizzes, :quiz_type, :integer, default: 0
  end
end
