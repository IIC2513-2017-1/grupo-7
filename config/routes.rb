Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get '/carrito', to: 'static_pages#carts_index'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/create', to: 'articulos#new'
  get '/add_articulo', to: 'static_pages#add_articulo'

  resources :carts
  resources :users
  resources :articulos
end
