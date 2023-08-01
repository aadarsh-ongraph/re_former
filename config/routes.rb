Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/users', to: 'users#index'
  # get '/users/new', to: 'users#new'
  # post '/user/create', to: 'users#create'
  # get '/user/edit/:id', to: 'users#edit'

  # put '/user/update/:id', to: 'users#update'

  #resources :users, only:[:index, :new]

   #resources :users

   root to: 'home#index'
   get '/login', to: 'sessions#new', as: 'login'
   post '/login', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy', as: 'logout'
end
