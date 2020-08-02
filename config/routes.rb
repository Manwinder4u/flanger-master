Rails.application.routes.draw do
  get 'contact/index'

  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'instruments#index'
  get 'about/' => "about#index"
  get 'contact/' => "contact#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
