Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :apartments, only: [:index, :create, :show, :update, :destroy]
  resources :tenants, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:index, :create, :show, :update, :destroy]

  # get "/user", to: "users#index"
  # get "/tenant", to: "tenants#index"
  # get "/apartment", to: "apartments#index"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
