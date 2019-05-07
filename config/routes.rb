Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: :index
  resources :destinations, except: [:edit, :update, :destroy]
  resources :posts
  resources :comments, except: [:index, :show]
  resources :tags, only: [:new, :create]

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
