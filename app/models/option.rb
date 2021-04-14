# frozen_string_literal: true

class Option < ApplicationRecord
  belongs_to :question
  validate :validate_quota
  validate :validate_true_answer_uniqueness

  private

  def validate_quota
    # What does this equal? do?
    (question.options.count < 4).equal?(true)
    errors.add('Too many questions') if question.options.count >= 4
  end

  def validate_true_answer_uniqueness
    # Very convoluted + What does this do?
    (question.options.where(is_correct: true).count.equal?(1) && is_correct.equal?(true)).equal?(false)
    if (question.options
      .where(is_correct: true)
      .count
      .equal?(1) && is_correct.equal?(true)).equal?(true)
      # Conditional above feels wrong? 
      # this should work first_condition && is_correct
      errors.add('Only one answer can be correct for each question')
    end
  end
end
