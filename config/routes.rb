Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :reservations
  resources :rooms
  resources :reviews


  resources :users, only: [:edit, :update]

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'rooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

