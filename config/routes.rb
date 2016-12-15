Rails.application.routes.draw do

  root 'welcome#index'

  get 'password_resets/new'
  get 'password_resets/edit'


  get '/login' => 'sessions#new'
  post '/login'=> 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :projects do
    resources :tasks
  resources :password_resets, only:[:new, :create, :edit, :update]
  end
end
