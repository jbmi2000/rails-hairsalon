Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "sessions#login"
  
  resources :client do
    resources :appointment, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  patch '/client/:client_id/appointment/:id/edit', to: 'appointment#edit', as: :edit

  

  resources :stylist, only: [:new, :create, :edit, :update, :show]
  resources :appointment

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'

  get "/stylist/new", to: "stylist#new", as: :signup_form
  post "stylist/create", to: "stylist#create", as: :signup

  get '/logout', to: 'sessions#logout', as: :logout

  

  

end
