Rails.application.routes.draw do
  root to: 'pages#home'

  resources :scooters do
    resources :rents, only: [:new, :create]
    collection do
      get 'my_scooters', to: 'scooters#my_scooters'
    end
  end

  resources :rents, except: [:new, :create]

  devise_for :users

end
