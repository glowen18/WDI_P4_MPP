Rails.application.routes.draw do

  root 'welcome#index'

  get 'password_resets/new'
  get 'password_resets/edit'


  get '/login' => 'sessions#new'
  post '/login'=> 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # get '/signup' => 'users#new'
  resources :users

  resources :projects do
    resources :tasks do
  resources :password_resets, only:[:new, :create, :edit, :update]
      end
    end
  end

end
