Rails.application.routes.draw do
  get 'cart/new'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/create', to: 'articulos#new'
  get '/add_articulo', to: 'static_pages#add_articulo'

  resources :users
  resources :articulos
end
