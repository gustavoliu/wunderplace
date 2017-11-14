Rails.application.routes.draw do
  get 'reviews/create'

  get 'reservations/new'

  get 'reservations/show'

  get 'reservations/create'

  get 'rooms/new'

  get 'rooms/create'

  get 'rooms/edit'

  get 'rooms/update'

  get 'rooms/destroy'

  get 'rooms/show'

  resources :users, only: [:edit, :update]

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
