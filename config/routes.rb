# == Route Map
#
#                   Prefix Verb   URI Pattern                              Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                 devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                 devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                devise/sessions#destroy
#            user_password POST   /users/password(.:format)                devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)            devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)           devise/passwords#edit
#                          PATCH  /users/password(.:format)                devise/passwords#update
#                          PUT    /users/password(.:format)                devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                  devise/registrations#cancel
#        user_registration POST   /users(.:format)                         devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                 devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                    devise/registrations#edit
#                          PATCH  /users(.:format)                         devise/registrations#update
#                          PUT    /users(.:format)                         devise/registrations#update
#                          DELETE /users(.:format)                         devise/registrations#destroy
#     unauthenticated_root GET    /                                        home#unregistered
#  lab_customer_home_index GET    /lab/customer/home(.:format)             lab/customer/home#index
#    lab_customer_products GET    /lab/customer/products(.:format)         lab/customer/products#index
#     lab_customer_product GET    /lab/customer/products/:id(.:format)     lab/customer/products#show
#     lab_admin_home_index GET    /lab/admin/home(.:format)                lab/admin/home#index
#      lab_admin_customers GET    /lab/admin/customers(.:format)           lab/admin/customers#index
#                          POST   /lab/admin/customers(.:format)           lab/admin/customers#create
#   new_lab_admin_customer GET    /lab/admin/customers/new(.:format)       lab/admin/customers#new
#  edit_lab_admin_customer GET    /lab/admin/customers/:id/edit(.:format)  lab/admin/customers#edit
#       lab_admin_customer GET    /lab/admin/customers/:id(.:format)       lab/admin/customers#show
#                          PATCH  /lab/admin/customers/:id(.:format)       lab/admin/customers#update
#                          PUT    /lab/admin/customers/:id(.:format)       lab/admin/customers#update
#                          DELETE /lab/admin/customers/:id(.:format)       lab/admin/customers#destroy
#     lab_admin_categories GET    /lab/admin/categories(.:format)          lab/admin/categories#index
#                          POST   /lab/admin/categories(.:format)          lab/admin/categories#create
#   new_lab_admin_category GET    /lab/admin/categories/new(.:format)      lab/admin/categories#new
#  edit_lab_admin_category GET    /lab/admin/categories/:id/edit(.:format) lab/admin/categories#edit
#       lab_admin_category GET    /lab/admin/categories/:id(.:format)      lab/admin/categories#show
#                          PATCH  /lab/admin/categories/:id(.:format)      lab/admin/categories#update
#                          PUT    /lab/admin/categories/:id(.:format)      lab/admin/categories#update
#                          DELETE /lab/admin/categories/:id(.:format)      lab/admin/categories#destroy
#       lab_admin_products GET    /lab/admin/products(.:format)            lab/admin/products#index
#                          POST   /lab/admin/products(.:format)            lab/admin/products#create
#    new_lab_admin_product GET    /lab/admin/products/new(.:format)        lab/admin/products#new
#   edit_lab_admin_product GET    /lab/admin/products/:id/edit(.:format)   lab/admin/products#edit
#        lab_admin_product GET    /lab/admin/products/:id(.:format)        lab/admin/products#show
#                          PATCH  /lab/admin/products/:id(.:format)        lab/admin/products#update
#                          PUT    /lab/admin/products/:id(.:format)        lab/admin/products#update
#                          DELETE /lab/admin/products/:id(.:format)        lab/admin/products#destroy
#                 products GET    /products(.:format)                      products#index
#                  product GET    /products/:id(.:format)                  products#show
# 

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated do
      root 'home#unregistered', as: :unauthenticated_root
    end
  end

  namespace :lab do
    namespace :customer do
      resources :home, only: [:index]
      resources :products, only: [:index, :show]
    end

    namespace :admin do
      resources :home, only: [:index]

      resources :categories
      resources :products
    end
  end

  resources :products, only: [:index, :show]
  root 'home#unregistered'
end
