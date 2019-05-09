Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :destinations, except: [:edit, :update, :destroy]
  resources :posts
  resources :comments, except: [:index, :show]
  resources :tags, only: [:show, :index]

  root 'application#hello'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/hello' => 'application#hello'
  post '/hello' => 'application#hello'

  post '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'


  get '/post/:id/like', to: 'posts#increase_likes', as: 'increase_likes'



end
