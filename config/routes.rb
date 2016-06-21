Rails.application.routes.draw do

  match '/messages',     to: 'contactss#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  root "home#index"

end
