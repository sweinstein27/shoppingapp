Rails.application.routes.draw do
  resources :users
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "static_pages#home"
end

