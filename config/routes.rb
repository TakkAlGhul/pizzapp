Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  resources :pizzas, only: :show do
    resources :reviews, only: [:new, :create]
  end
  root 'pizzas#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
