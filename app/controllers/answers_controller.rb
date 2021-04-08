class AnswersController < ApplicationController
  def create
    if @answer_exist = Answer.find_by(question_id: params[:id].to_i, quiz_id: params[:quiz_id].to_i, user_id: current_user)
      @answer_exist.destroy
    end
    @answer = Answer.new(answer_params)    
    @answer.user = current_user
    @answer.question_id = params[:id].to_i
    @answer.quiz_id = params[:quiz_id].to_i
    @answer.save
    if Question.find_by(id: @answer.question_id + 1, quiz_id: params[:quiz_id].to_i)
      redirect_to quiz_question_path(@answer.quiz_id, @answer.question_id + 1)
    else
      redirect_to root_path
    end
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path, :flash => { :error => "Record not found." }
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, :question_id, :quiz_id, :user_id)
  end
end
