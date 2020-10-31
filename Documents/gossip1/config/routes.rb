Rails.application.routes.draw do
  resources :gossip
  resources :contact, only: [:index]
  resources :team, only: [:index]

end
