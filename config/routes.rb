Rails.application.routes.draw do

#CRUD for Images
resources :images, only: [:index, :create, :new, :destroy]

  get 'pages/faq'

#Temporary route
  root 'images#index'
end
