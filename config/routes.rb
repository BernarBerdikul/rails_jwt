Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "auto_login", to: "users#auto_login"
  get "get_all", to: "users#get_all"
end
