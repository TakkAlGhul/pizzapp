Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :pizzas do
    resources :reviews, only: :create
  end
  root 'pizzas#index'
end
