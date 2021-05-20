Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offices, only: [ :index, :show, :create, :new ] do
    resources :bookings, only: [ :new, :create ] do
      resources :dashboards, only: [ :new, :create ]
  end
resources :bookings, only: [ :edit, :update ]
resources :dashboards, only: [ :edit, :update ]
end
