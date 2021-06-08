Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [ :new, :create, :index ]

  resources :sessions, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [ :index ]

  get "/sessions/search", to: "sessions#search", as: :search
  patch "/sessions/:id", to: "sessions#cancel", as: :cancel_session

  patch "/bookings/:id", to: "bookings#accept", as: :accept_booking
  patch "/bookings/:id", to: "bookings#decline", as: :decline_booking

  get "/components", to: "pages#components", as: :components
end
