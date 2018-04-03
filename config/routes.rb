Rails.application.routes.draw do

  resources :products, only: [:index, :show]

  get 'search', to: 'search#index', as: 'search'
  get 'category/:id', to: 'categories#show', as: 'category'

  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
