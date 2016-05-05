Rails.application.routes.draw do

  devise_for :users
  resources :metrics
  resources :features, only: [:new, :create]
  resources :users, only: [:show]

  root 'metrics#index'
end
