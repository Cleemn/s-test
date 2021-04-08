# frozen_string_literal: true

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @quizzes = Quiz.all

    @scores = Answer.where(user_id: current_user.id) if user_signed_in?
  end
end
