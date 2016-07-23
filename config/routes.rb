Rails.application.routes.draw do


  resources "contacts", only: [:new, :create]
  resources "supports", only: [:new, :create]

  root "home#index"

end
