Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/signup', to: 'users#destroy'
  resources :users, only: [:index, :show, :edit, :update]
  
  get '/login', to: 'sessions#new'
  get '/login', to: 'sesssions#create'
  delete '/logout', to: 'sessions#destroy'
end
