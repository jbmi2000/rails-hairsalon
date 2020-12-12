Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "sessions#login"
  
  resources :client do
    resources :appointment, only: [:new, :create, :show]
  end

  resources :stylist, only: [:new, :create, :edit, :update, :show]
  resources :appointment

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'

  get "/stylist/new", to: "stylist#new", as: :signup_form
  post "stylist/create", to: "stylist#create", as: :signup

  # post "client/new", to: "client#create", as: 

  get '/logout', to: 'sessions#logout', as: :logout

end
