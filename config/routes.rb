Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#welcome"

  get "/register", to: "users#new"
  get "/login", to: "users#login"
  post "/login", to: "users#login_user"
  delete '/login', to:  "users#logout"

  get "/auth/:provider/callback", to: "sessions#omniauth"

  resources :users, only: [:create, :show] do
    get "/past_trips", to: "users#past_trips", as: "past_trips"
    resources :trips, only: [:new, :create, :show]
  end
end
