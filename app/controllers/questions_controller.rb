class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @next_question = @question.id + 1
    @last_question = @question.id - 1
    @options = Option.where(question_id: @question.id)
    @options.each do |o|
      @option = o.answer
    end
  end
end
