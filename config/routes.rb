Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: [:index]
  root 'posts#index'
  resources :friend_requests, only: [:create, :index]
  resources :friends, only: [:index]
  resources :posts do
    resources :comments
    resources :likes
  end
end
