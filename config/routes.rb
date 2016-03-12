Rails.application.routes.draw do
  namespace :admin do
    resources :screens
    resources :commands
    resources :users
    resources :venues
    resources :categories
    resources :sub_categories
    resources :items
    resources :carts
    resources :orders
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
