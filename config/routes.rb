Rails.application.routes.draw do
  
  resources :comments
  resources :users, except: [:new]
  root 'pages#home'

  get '/about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
end
