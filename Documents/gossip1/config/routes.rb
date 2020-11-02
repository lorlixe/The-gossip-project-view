Rails.application.routes.draw do
  resources :gossip
  resources :contact, only: [:index]
  resources :team, only: [:index]
  resources :user

  get  '/user/:id', to: 'user#show'

  get '/gossip/:id', to: 'gossip#show'

end
