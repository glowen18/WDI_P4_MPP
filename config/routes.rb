Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'sessions#new'
  get '/signup' => 'users#create'

  post '/login'=> 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :users
  resources :projects do
    resources :tasks
  end
end
