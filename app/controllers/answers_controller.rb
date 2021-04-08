class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)    
    @answer.user = current_user
    @answer.question_id = params[:id].to_i
    @answer.quiz_id = params[:quiz_id].to_i
    @answer.save
    if @answer.question_id < 4
      redirect_to quiz_question_path(@answer.quiz_id, @answer.question_id + 1)
    else
      redirect_to root_path
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, :question_id, :quiz_id, :user_id)
  end
end
