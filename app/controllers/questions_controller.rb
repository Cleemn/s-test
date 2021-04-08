# frozen_string_literal: true

class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @options = Option.where(question_id: @question.id)
    @options.each do |o|
      @option = o.answer
    end
  end
end
