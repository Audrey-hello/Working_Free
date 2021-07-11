Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offices, only: [ :index, :show, :create, :new, :destroy ] do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
  resources :bookings, only: [ :edit, :update, :destroy] do
    member do
      get :accept
      get :decline
    end
  end
end
