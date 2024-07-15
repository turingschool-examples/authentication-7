Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#index"

  resources :users, only: [:new, :create]
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  namespace :admin do
    get "/dashboard", to: "dashboard#index"
  end
end
