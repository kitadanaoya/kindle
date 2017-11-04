Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  
	get '/highlights', to: 'highlights#new'
  post '/highlights', to: 'highlights#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/signup', to: 'users#destroy'
  resources :users, only: [:index, :show, :edit, :update]

  get 'login', to: 'sessions#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
