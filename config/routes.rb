Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :customers
  resources :admins
  devise_for :users
  root to: "home#index"
end
