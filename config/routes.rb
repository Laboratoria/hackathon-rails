# == Route Map
#
#                   Prefix Verb   URI Pattern                          Controller#Action
#         new_user_session GET    /users/sign_in(.:format)             devise/sessions#new
#             user_session POST   /users/sign_in(.:format)             devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)            devise/sessions#destroy
#            user_password POST   /users/password(.:format)            devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)        devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)       devise/passwords#edit
#                          PATCH  /users/password(.:format)            devise/passwords#update
#                          PUT    /users/password(.:format)            devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)              devise/registrations#cancel
#        user_registration POST   /users(.:format)                     devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)             devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                devise/registrations#edit
#                          PATCH  /users(.:format)                     devise/registrations#update
#                          PUT    /users(.:format)                     devise/registrations#update
#                          DELETE /users(.:format)                     devise/registrations#destroy
#     unauthenticated_root GET    /                                    home#index
#      customer_home_index GET    /customer/home(.:format)             customer/home#index
#         admin_home_index GET    /admin/home(.:format)                admin/home#index
#          admin_customers GET    /admin/customers(.:format)           admin/customers#index
#                          POST   /admin/customers(.:format)           admin/customers#create
#       new_admin_customer GET    /admin/customers/new(.:format)       admin/customers#new
#      edit_admin_customer GET    /admin/customers/:id/edit(.:format)  admin/customers#edit
#           admin_customer GET    /admin/customers/:id(.:format)       admin/customers#show
#                          PATCH  /admin/customers/:id(.:format)       admin/customers#update
#                          PUT    /admin/customers/:id(.:format)       admin/customers#update
#                          DELETE /admin/customers/:id(.:format)       admin/customers#destroy
#         admin_categories GET    /admin/categories(.:format)          admin/categories#index
#                          POST   /admin/categories(.:format)          admin/categories#create
#       new_admin_category GET    /admin/categories/new(.:format)      admin/categories#new
#      edit_admin_category GET    /admin/categories/:id/edit(.:format) admin/categories#edit
#           admin_category GET    /admin/categories/:id(.:format)      admin/categories#show
#                          PATCH  /admin/categories/:id(.:format)      admin/categories#update
#                          PUT    /admin/categories/:id(.:format)      admin/categories#update
#                          DELETE /admin/categories/:id(.:format)      admin/categories#destroy
#           admin_products GET    /admin/products(.:format)            admin/products#index
#                          POST   /admin/products(.:format)            admin/products#create
#        new_admin_product GET    /admin/products/new(.:format)        admin/products#new
#       edit_admin_product GET    /admin/products/:id/edit(.:format)   admin/products#edit
#            admin_product GET    /admin/products/:id(.:format)        admin/products#show
#                          PATCH  /admin/products/:id(.:format)        admin/products#update
#                          PUT    /admin/products/:id(.:format)        admin/products#update
#                          DELETE /admin/products/:id(.:format)        admin/products#destroy
# 

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated do
      root 'home#unregistered', as: :unauthenticated_root
    end
  end

  namespace :customer do
    resources :home, only: [:index]
    resources :products, only: [:index, :show]
  end

  namespace :admin do
    resources :home, only: [:index]

    resources :customers
    resources :categories
    resources :products do
      member do
        # get :report
      end
      collection do
        # get :report
      end
    end
  end

  resources :products, only: [:index, :show]
end
