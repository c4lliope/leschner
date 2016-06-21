Rails.application.routes.draw do

  match '/messages',     to: 'contact#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  root "home#index"

end
