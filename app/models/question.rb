class Question < ApplicationRecord
  belongs_to :quiz
  has_many :options
  has_many :answers
  validate :validate_quota

  def validate_quota
    self.quiz.questions.count < 3 === true
    errors.add("Too many questions") if quiz.questions.count >= 3
  end
end