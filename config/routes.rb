Rails.application.routes.draw do
  get 'users/create'

  get 'users/new'

  devise_for :users
  resources :metrics
  resources :features, only: [:new, :create]
  resources :users, only: [:show]

  root 'metrics#index'
end
