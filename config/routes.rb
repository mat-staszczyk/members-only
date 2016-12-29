Rails.application.routes.draw do
  get '/signup', to: 'users#new'

  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy'

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  resources :users

end
