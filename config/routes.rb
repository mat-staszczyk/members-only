Rails.application.routes.draw do
  resources :users

  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

end
