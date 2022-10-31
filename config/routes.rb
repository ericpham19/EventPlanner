Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "main#index"
  get "homepage", to: "homepage#index"
  resources :users, only: [:new, :create, :welcome, :show]
  resources :sessions, only: [:new, :create, :destroy]



end
