Rails.application.routes.draw do
  resources :users, except: [:show] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:update]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  scope :users do
    # post 'index', to: "users#index", as: 'users_index'
    post ':id/follow', to: "users#follow", as: "follow"
    post ':id/unfollow', to: "users#unfollow", as: "unfollow"
    get ':id', to: "users#show", as: "user_followers"
  end
  # resources :followers, only: :index
end
