Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :apartments, only: [:index, :create, :show, :update, :destroy]
  resources :tenants, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:index]

  # get "/user", to: "users#index"
  # get "/tenant", to: "tenants#index"
  # get "/apartment", to: "apartments#index"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
