Rails.application.routes.draw do

  root 'welcome#index'

  get "users/" => "users#index"
  post "users/" => "users#create"
  get "users/new" => "users#new", as: :new_user

  post '/login'    => 'sessions#create'
  get '/login'     => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

  resources :projects do
    resources :tasks do

      member do
        patch :complete
      end
    end
  end


end
