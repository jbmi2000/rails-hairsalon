Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stylist, only: [:new, :create, :edit, :update, :show]

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  post '/stylist/new', to: 'stylist#create', as: 'new'

end
