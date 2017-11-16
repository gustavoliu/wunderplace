Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :reservations
  resources :rooms
  resources :reviews



  devise_for :users, controllers: { registrations: "registrations" }, :path => 'devise'
  resources :users, only: [:edit, :update]

  root to: 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

