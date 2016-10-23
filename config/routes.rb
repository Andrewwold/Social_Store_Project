Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'pages#home'

  get 'pages/account'
  get 'pages/store'
  get 'pages/products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
