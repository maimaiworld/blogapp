Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  devise_scope :user do
    # get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :articles do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
