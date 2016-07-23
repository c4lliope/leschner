Rails.application.routes.draw do

  match '/messages',     to: 'contacts#new',      via: 'get'
  resources "contacts", only: [:new, :create]

  match '/messages',     to: 'supports#new',      via: 'get'
  resources "supports", only: [:new, :create]

  root "home#index"

end
