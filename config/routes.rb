# frozen_string_literal: true

Rails.application.routes.draw do
  root 'top#index'

  get 'post_answer/new'
  get 'post_question/new'

  get 'question_detail/index'
  get 'question/index'

  get '/question_list/:id', to: 'question#list', as: :question_list
  get '/question_detail', to: 'question_detail#index'
  get '/question/post_question/:id/new', to: 'question#new'
  post '/question/post_question/:id', to: 'question#create'

  get '/post_answer', to: 'post_answer#new'
  # get '/post_question', to: 'post_question#new'
  # post '/post_question', to: 'post_question#create'

  get  '/signup', to: 'users#new'

  get  '/ws8_system', to: 'top#index'
  get  '/top_page', to: 'usertop#index'

  get 'usertop/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :articles
  resources :users
  # resources :question
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
