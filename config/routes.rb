# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :quizzes do
    resources :questions, only: [:show]
    resources :answers, only: [:create]
  end
  post '/quizzes/:quiz_id/questions/:id', to: 'answers#create'
end
