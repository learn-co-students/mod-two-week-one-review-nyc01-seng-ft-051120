Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/seas", to:'seas#index'
  get "/", to: 'seas#welcome'
  get "seas/new", to: 'seas#new'
  get 'seas/:id', to: 'seas#show'
  post '/seas'
  # resources :seas
  # get	'/seas/:id/edit'	/seas/edit
  # resources :seas, only: :show
end

