Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'recetas#index'
  resources :categorias, :except => [:show]
  resources :ingredientes, :except => [:show]
  resources :recetas
end
