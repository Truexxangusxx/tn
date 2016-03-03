Rails.application.routes.draw do

  get 'archivos/subir_archivos'

  devise_for :users
  get 'welcome/index'
  root :to => "welcome#index"

  resources :detalles

  resources :columnas

  resources :productos

 post 'comentarios' => 'comentarios#create'

get "archivos/subir_archivos"
post "archivos/subir_archivos"


end
