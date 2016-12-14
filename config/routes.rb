Rails.application.routes.draw do

  get "users/" => "users#index"
  post "users/" => "users#create"
  get "users/new" => "users#new", as: :new_user

  post '/login'    => 'sessions#create'
  get '/login'     => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

  get '/projects' => 'projects#index'
  post '/projects' => 'projects#create'
  get '/projects/new' => 'projects#new'
  get '/projects/:id/edit' => 'projects#edit'
  get '/projects/:id' => 'projects#show'
  patch '/projects/:id' => 'projects#update'
  delete '/projects/:id' => 'projects#destroy'

  get '/projects/:project_id/tasks' => 'tasks#index'
  post '/projects/:project_id/tasks' => 'tasks#create'
  get '/projects/:project_id/tasks/new' => 'tasks#new'
  get '/projects/:project_id/tasks/:id/edit' => 'tasks#edit'
  get '/projects/:project_id/tasks/:id' => 'tasks#show'
  patch '/projects/:project_id/tasks/:id' => 'tasks#update'
  delete '/projects/:project_id/tasks/:id' => 'tasks#destroy'

end
