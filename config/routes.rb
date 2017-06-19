Rails.application.routes.draw do
  # get 'appearance/integer:rating'
  root 'welcome#index'

  get 'users/new', to: 'users#new', as: 'signup'
  post '/signin', to: 'sessions#create', as: 'signin'
  get '/signin', to:'sessions#new', as: 'login_page'

  delete '/sessions/:id', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :users
  resources :appearances


end
