Rails.application.routes.draw do
  resources :likes
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :posts
  resources :locations, only: [:index, :show]
  
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/me", to: "users#me"
  patch "/me", to: "users#update"

end
