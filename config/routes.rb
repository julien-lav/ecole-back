Rails.application.routes.draw do

  resources :infos
  resources :meetings
  root 'static_pages#home'
  get '/info_page', to: 'static_pages#info_page'
  get '/admin', to: 'static_pages#admin'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  # get '/contact', to: 'static_pages#contact'
  get '/year_one', to: 'static_pages#year_one'
  get '/year_two', to: 'static_pages#year_two'
  get '/year_three', to: 'static_pages#year_three'
  get '/year_four', to: 'static_pages#year_four'
  get '/year_five', to: 'static_pages#year_five'
  get '/promo_2018', to: 'static_pages#promo_2018'
  get '/revues', to: 'static_pages#revues'
  get '/ressources', to: 'static_pages#ressources'
  get '/realisateurs', to: 'static_pages#realisateurs'

  get '/la_formation_1_1', to: 'static_pages#la_formation_1_1'
  get '/la_formation_1_2', to: 'static_pages#la_formation_1_2'
  get '/la_formation_1_3', to: 'static_pages#la_formation_1_3'
  get '/la_formation_1_4', to: 'static_pages#la_formation_1_4'
  get '/la_formation_2_1', to: 'static_pages#la_formation_2_1'
  get '/la_formation_2_2', to: 'static_pages#la_formation_2_2'
  get '/la_formation_2_3', to: 'static_pages#la_formation_2_3'
  get '/la_formation_2_4', to: 'static_pages#la_formation_2_4'
  get '/calendar', to: 'static_pages#calendar'
  resources :users
  get '/list', to: 'users#list'
  get    '/users/new',  to: 'users#new' # user_new (for now for security purpose)
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'contacts/new'
  get 'contacts/create'
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  resource 'calendar', only: [:show]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
