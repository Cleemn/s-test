class QuizzesController < ApplicationController
  def index
  end

  def show
    @quiz = Quiz.find(params[:id])
    @options = Option.find_by(question_id: params[:id])
  end

  private

  def set_quiz
  end
end
