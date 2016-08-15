Rails.application.routes.draw do



  namespace :admin do
    resources :progresses

    root to: "progresses#index"
  end


  resources :progresses
  resources :contacts, only: [:new, :create]
  resources :supports, only: [:new, :create]

  root "home#index"

end
