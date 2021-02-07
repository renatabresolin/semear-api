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
  resources :followers, only: [:index]
  resources :learns, only: [:index]
  resources :careers, only: [:index]
  resources :instructs, only: [:index]
end
