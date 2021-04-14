# frozen_string_literal: true

class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    # You end up not using this ? 
    @options = Option.where(question_id: @question.id)
    # Why ? 
    @options.each do |o|
      @option = o.answer
    end
  end
end
