Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
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

  resources :chatrooms, only: :index
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # for error pages
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
