Rails.application.routes.draw do

  root to: 'products#index'
  resources :abouts, only: [:show]
  resources :products, only: [:index, :show]

  get 'abouts', to: 'abouts#show'
  get 'search', to: 'search#index', as: 'search'
  get 'category/:id', to: 'categories#show', as: 'category'
  
  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
