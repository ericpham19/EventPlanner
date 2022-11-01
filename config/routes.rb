Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "main#index"
  get "homepage", to: "homepage#index"
  resources :users, only: [:new, :create, :welcome, :show]
 



end
