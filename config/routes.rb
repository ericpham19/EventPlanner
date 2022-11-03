Rails.application.routes.draw do
  resources :booking_types
  resources :bookings
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root to: "main#index"
  get "homepage", to: "homepage#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :users, only: [:new, :create, :welcome, :show]
  resources :booking_types
  resources :bookings
 



end
