Rails.application.routes.draw do


  resources :historial_compras
  post '/rate' => 'rater#create', :as => 'rate'
  get 'password_resets/new'
  get '/moneda', to: 'articulos#moneda'
  get 'password_resets/edit'
  get '/graficos', to: 'users#graficos'
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get '/carrito', to: 'static_pages#carts_index'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/create', to: 'articulos#new'
  get '/add_articulo', to: 'static_pages#add_articulo'
  get '/confirmar_compras', to: 'static_pages#confirmar_compras'
  get '/tecnologia', to: 'static_pages#categoria', :categoria => 'tecnologia'
  get '/hombre', to: 'static_pages#categoria', :categoria => 'hombre'
  get '/mujer', to: 'static_pages#categoria', :categoria => 'mujer'
  get '/calzado', to: 'static_pages#categoria', :categoria => 'calzado'
  get '/deporte', to: 'static_pages#categoria', :categoria => 'deporte'
  get '/accesorios', to: 'static_pages#categoria', :categoria => 'accesorios'
  get '/outdoor', to: 'static_pages#categoria', :categoria => 'outdoor'

  resources :carts
  resources :users
  resources :articulos
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :comentarios
end
