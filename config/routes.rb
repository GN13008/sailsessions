Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions, only: [ :new, :create, :index ]

  resources :session, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [ :index ]

  get "/sessions/search", to: "sessions#search", as: :search
  get "/sessions/:id", to: "sessions#cancel", as: :cancel_session

  get "/bookings/:id", to: "bookings#accept", as: :accept_booking
  get "/bookings/:id", to: "bookings#decline", as: :decline_booking
end
