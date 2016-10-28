Rails.application.routes.draw do

  resources :surveys do
    resources :questions, only: [:new, :create, :update, :destroy]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
