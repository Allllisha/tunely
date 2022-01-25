Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :intruments, only: %i[index new create show] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[index update]

  namespace :owner do
    resources :bookings, only: :index
    # equivalent to => get '/owner/bookings', to: 'owner/bookings#index'
  end
end
