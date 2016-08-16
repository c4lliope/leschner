Rails.application.routes.draw do



  resources :progress_attachments
  namespace :admin do
    resources :progresses

    root to: "progresses#index"
  end


  resources :progresses
  resources :contacts, only: [:new, :create]
  resources :supports, only: [:new, :create]

  root "home#index"

end
