Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
    resources :reviews, only: [:destroy]

  # List all restaurants
  # get 'restaurants', to: 'restaurants#index', as: :restaurants

  # Add a new restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # View a restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Add a review to restaurant
  # get 'restaurants/:id/reviews/new', to: 'restaurants#'
  # post 'restaurants/:id/reviews', to: 'restaurants#create'

end
