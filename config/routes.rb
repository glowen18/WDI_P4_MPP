Rails.application.routes.draw do

  root 'welcome#index'

  post '/login'    => 'sessions#create'
  get '/login'     => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

  resources :users do
    resources :projects do

  resources :projects do
    resources :tasks do

      member do
        patch :complete
      end
    end
  end
    end
  end

end
