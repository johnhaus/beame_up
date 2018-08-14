Rails.application.routes.draw do
  root to: 'pages#home'

  resources :scooters do
    resources :rent
    collection do
      get 'my_scooters', to: 'scooters#my_scooters'
    end
  end

  devise_for :users

end
