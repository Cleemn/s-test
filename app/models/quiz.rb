class Quiz < ApplicationRecord
  has_many :questions

  def score(quiz)
    @passed = 0

    @questions = Question.where(quiz_id: quiz.id).count

    @quiz_scores = Answer.where(quiz_id: quiz.id)

    @quiz_scores.each do |s|
      @choosen_option = Option.find_by(answer: s.answer)
      if @choosen_option.is_correct === true
        @passed += (100/@questions)
      end
    end
    @passed
  end
end
