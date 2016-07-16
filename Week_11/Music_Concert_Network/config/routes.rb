Rails.application.routes.draw do

	post '/search' => 'concerts#search'
	get '/popular' => 'concerts#popular'

  resources :concerts,  only: [:new, :show, :create, :index] do
  	resources :comments, except: [:show]
  end

  resources :cities, only:  [:new, :create]

end
