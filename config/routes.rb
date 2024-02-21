Rails.application.routes.draw do

devise_for :users

root to:'events#index'

resources :events do
  resources :attendance, only: [:new, :create]
end

resources :users

  get "up" => "rails/health#show", as: :rails_health_check

end

#events#new créer un event
#registrations#new nouvelle inscription
#sessions#new connexion
#users#show le profil
#sessions#destroy deconnexion