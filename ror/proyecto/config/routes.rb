Rails.application.routes.draw do
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/categorias' => 'categorias#index'
  resources :categorias, except: [:show]
  resources :ingredientes, except: [:show]
  resources :recetas

  root 'recetas#index'
end