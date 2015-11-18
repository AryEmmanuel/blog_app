Rails.application.routes.draw do
  
  resources :categories

  devise_for :users

  resources :articles do
  	resources :comments, only: [:create, :destroy, :update]
  end

  get 'welcome/index'
  root 'articles#index'

  get "/dashboard", to: "welcome#dashboard"

  put "/articles/:id/publish", to: "articles#publish"
 end