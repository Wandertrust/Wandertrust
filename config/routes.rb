Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/register", to: "users#new"
  get "/login", to: "users#login"
  post "/login", to: "users#login_user"

  get "/auth/:provider/callback", to: "users#omniauth"

  resources :users, only: [:create, :show]
end
