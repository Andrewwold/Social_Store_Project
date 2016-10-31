Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts
    resources :admin_users

    root to: "users#index"
  end

  resources :posts
  devise_for :users
  root 'pages#home'

  get 'pages/account'
  get 'pages/store'
  get 'pages/products'

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
