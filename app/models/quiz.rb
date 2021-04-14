# frozen_string_literal: true

class Quiz < ApplicationRecord
  has_many :questions

  def score(quiz)
    # Why all these instance variables ?
    # Why pass the quiz at all ? isn't this called already in a quiz?
    @passed = 0

    @questions = Question.where(quiz_id: quiz.id).count

    @quiz_scores = Answer.where(quiz_id: quiz.id)

    @quiz_scores.each do |s|
      @choosen_option = Option.find_by(answer: s.answer)
      if @choosen_option.answer.empty?
        # redirect in the model ?
        redirect_to root_path
      elsif @choosen_option.is_correct.equal?(true)
        @passed += (100.to_f / @questions)
      end
    end
    @passed.round
  end
end
