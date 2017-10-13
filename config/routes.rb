Rails.application.routes.draw do
  get 'highlights/index'

  get 'highlights/show'

  get 'highlights/new'

  get 'highlights/create'

  get 'highlights/edit'

  get 'highlights/update'

  get 'highlights/destroy'

  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/create'

  get 'books/edit'

  get 'books/update'

  get 'books/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/signup', to: 'users#destroy'
  resources :users, only: [:index, :show, :edit, :update]
end
