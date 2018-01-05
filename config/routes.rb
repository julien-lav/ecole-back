Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/year_one', to: 'static_pages#year_one'
  get '/year_two', to: 'static_pages#year_two'
  get '/year_three', to: 'static_pages#year_three'
  get '/year_four', to: 'static_pages#year_four'
  get '/year_five', to: 'static_pages#year_five'
  resources :users
  get    '/users/new',  to: 'users#new' # user_new (for now for security purpose)
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end