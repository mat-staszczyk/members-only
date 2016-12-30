Rails.application.routes.draw do
  get 'posts/new'

  get 'posts/create'

  get 'posts/index'

  get '/signup', to: 'users#new'

  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  resources :users
  resources :posts, only: [:new, :create, :index]

end
