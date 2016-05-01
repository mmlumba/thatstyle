Rails.application.routes.draw do


  devise_for :users
  #CRUD for Images
  resources :images, only: [:index, :create, :new, :destroy]

  #Static Pages
  get 'pages/faq'
  get 'pages/contact'

  #Root Path
    root 'images#index'
end
