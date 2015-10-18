Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  
  get 'auth/:provider/callback', to: 'connections#create'
  resources  :connections, only: [:destroy]

end
