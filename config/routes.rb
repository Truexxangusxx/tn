Rails.application.routes.draw do

  get 'welcome/index'
  root :to => "welcome#index"

  resources :detalles

  resources :columnas

  resources :productos

 post 'comentarios' => 'comentarios#create'



end
