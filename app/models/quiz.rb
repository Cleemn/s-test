class Quiz < ApplicationRecord
  has_many :questions

  def score(quiz)
    @passed = 0

    @questions = Question.where(quiz_id: quiz.id).count

    @quiz_scores = Answer.where(quiz_id: quiz.id)

    @quiz_scores.each do |s|
      @choosen_option = Option.find_by(answer: s.answer)
      if @choosen_option.answer.empty?
        redirect_to root_path
      elsif @choosen_option.is_correct === true
        @passed += (100.to_f/@questions)
      end
    end
    @passed.round
  end
end
