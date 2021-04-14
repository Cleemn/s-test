# frozen_string_literal: true

class AnswersController < ApplicationController
  # this method has too much logic
  def create
    # Why not keep a history? 
    # Why instance variable?
    @answer_exist = Answer.find_by(question_id: params[:id].to_i, quiz_id: params[:quiz_id].to_i, user_id: current_user)
    @answer_exist&.destroy

    @answer = Answer.new(answer_params)
    @answer.user = current_user
    # You already should have this in the params#permit ?
    @answer.question_id = params[:id].to_i
    @answer.quiz_id = params[:quiz_id].to_i
    @answer.save

    # a bit too mucj logig here, should have had something like question.next and construct the redirect there
    if Question.find_by(id: @answer.question_id + 1, quiz_id: params[:quiz_id].to_i)
      redirect_to quiz_question_path(@answer.quiz_id, @answer.question_id + 1)
    else
      redirect_to root_path
    end
    # Why not, but exceptions for flow control can be cumbersome
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, flash: { error: 'Record not found.' }
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, :question_id, :quiz_id, :user_id)
  end
end
