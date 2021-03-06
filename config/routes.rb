Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :rides, only: [ :new, :create, :index ]

  resources :rides, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [ :index ]

  get "/search", to: "rides#search", as: :search
  patch "/rides/:id", to: "rides#cancel", as: :cancel_ride

  patch "/bookings/:id", to: "bookings#status", as: :change_status_booking

  get "/components", to: "pages#components", as: :components

  get "/users/:id", to: "users#show", as: :user_profile

  resources :chatrooms, only: :index
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # testing contact form
  resources :contacts, only: [:new, :create]

  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :rides, only: [ :show ]
    end
  end
end
