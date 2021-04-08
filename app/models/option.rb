class Option < ApplicationRecord
  belongs_to :question
  validate :validate_quota

  def validate_quota
    self.question.options.count < 4 === true
    errors.add("Too many questions") if question.options.count >= 4
  end
end
