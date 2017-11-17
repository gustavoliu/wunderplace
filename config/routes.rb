Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  root to: 'rooms#home'

  devise_for :users, controllers: { registrations: "registrations" }, :path => 'devise'
  resources :users, only: [:edit, :update, :show]

  resources :rooms do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create ]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

