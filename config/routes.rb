Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login'=> 'sessions#create'

  get '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  get 'password_resets/new'

  get 'password_resets/edit'

  resources :users
  resources :projects do
    resources :tasks
  end
end
