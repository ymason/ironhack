Rails.application.routes.draw do

get '/' => 'site#home'
get '/contact' => 'site#contact'

resources :projects, only: [:index, :show, :new, :create] do
	resources :time_entries, only: [:index, :new, :create, :edit, :update]
end

# get '/projects/:project_id/time_entries/:id/edit' => 'time_entries#edit'

# get '/projects' => 'projects#index'

# get 'projects/new' => 'projects#new'

# post 'projects' => 'projects#create'

# get 'projects/:id' => 'projects#show'

# get 'projects/:project_id/time_entries' => 'time_entries#index'

# get 'projects/:project_id/time_entries/new' => 'time_entries#new'

end
