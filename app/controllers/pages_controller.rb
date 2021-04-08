class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @quizzes = Quiz.all

    if user_signed_in?
      @scores = Answer.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end
end