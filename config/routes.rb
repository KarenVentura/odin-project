Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: [:index]
  root 'users#index'
  resources :friend_requests, only: [:create, :index]
  resources :friends, only: [:index]
end
