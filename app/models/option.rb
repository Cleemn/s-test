class Option < ApplicationRecord
  belongs_to :question
  validate :validate_quota
  validate :validate_true_answer_uniqueness

  private

  def validate_quota
    self.question.options.count < 4 === true
    errors.add("Too many questions") if question.options.count >= 4
  end

  def validate_true_answer_uniqueness
    (self.question.options.where(is_correct: true).count === 1 && self.is_correct === true) === false
    if (question.options.where(is_correct: true).count === 1 && self.is_correct === true) === true
      errors.add("Only one answer can be correct for each question")
    end
  end
end

# Option.where(is_correct: true).count