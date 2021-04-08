class AddQuizToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :quiz, null: false, foreign_key: true
  end
end
