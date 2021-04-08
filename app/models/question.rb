# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :quiz
  has_many :options
  has_many :answers
  validate :validate_quota

  private

  def validate_quota
    (quiz.questions.count < 3).equal?(true)
    errors.add('Too many questions') if quiz.questions.count >= 3
  end
end
