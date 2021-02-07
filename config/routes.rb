Rails.application.routes.draw do
  resources :users do
      resources :reviews, only: [:create]
  end
  resources :reviews, only: [:update]

  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  scope :users do
    post ':id/follow', to: "users#follow", as: "follow"
    post ':id/unfollow', to: "users#unfollow", as: "unfollow"
  end
  resources :followers, only: :index
end







# namespace :api, defaults: { format: :json } do
#     resources :users do
#       resources :reviews, only: [:create]
#     end
#     resources :reviews, only: [:update]
#     post "/login", to: "users#login"
#     get "/auto_login", to: "users#auto_login"
#   end
