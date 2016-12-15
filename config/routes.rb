Rails.application.routes.draw do

  root 'welcome#index'

  post '/login'=> 'sessions#create'
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new' 
  resources :users

  resources :projects do
    resources :tasks do

      member do
        patch :complete
      end
    end
  end

end
