Rails.application.routes.draw do
  
  resources :comments
  resources :users
  root 'pages#home'

  get '/about', to: 'pages#about'

  resources :articles

end
