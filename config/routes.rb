Rails.application.routes.draw do

#CRUD for Images
  get 'images/index'
  get 'images/new'
  get 'images/create'
  get 'images/destroy'

#Temporary route
  root 'pages#home'
end
