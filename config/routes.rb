Rails.application.routes.draw do


  devise_for :users
#CRUD for Images
resources :images, only: [:index, :create, :new, :destroy]

  get 'pages/faq'

#Temporary route
  root 'images#index'
end
