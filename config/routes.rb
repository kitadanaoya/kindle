Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'highlights#index'
  
	get '/highlights', to: 'highlights#new'
  post '/highlights', to: 'highlights#create'
  resources :highlights, only: [:index, :show] do
    resources :likes, only: [:create, :destroy]
  end

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/signup', to: 'users#destroy'
  resources :users, only: [:index, :show, :edit, :update] do
    resources :highlights
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'session#destroy'
end