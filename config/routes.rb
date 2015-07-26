Rails.application.routes.draw do
  root 'items#index'

  get '/signup' => 'customers#new'
  post '/customers' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'items/:page_number', to: 'items#index', as: 'items_per_page'
  get 'items_paginated_ajax/:page_number', to: 'items#items_paginated_ajax',  as: 'items_per_page_ajax'

end
