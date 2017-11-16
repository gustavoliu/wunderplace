Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :reservations
  # resources :rooms
  resources :reviews

  devise_for :users, controllers: { registrations: "registrations" }, :path => 'devise'
  resources :users, only: [:edit, :update]

  resources :rooms do
    resources :reservations, only: [:create]
  end

  root to: 'rooms#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

