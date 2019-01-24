Rails.application.routes.draw do
  
  root 'pages#home'
  get '/about', to: 'pages#about'

  resources :comments
  resources :users, except: [:new]
  resources :articles
  resources :categories, except: [:destroy]

  get 'signup', to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
