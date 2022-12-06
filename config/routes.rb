Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :admin
  resources :apartment
  resources :tenant

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "signup", to: "users#create"
  get "/me", to: "users#show"
end
