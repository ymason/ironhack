Rails.application.routes.draw do

  get '/' => 'contacts#new'

  post 'contacts' => 'contacts#create'

  get '/contacts' => 'contacts#list'

  get '/contacts/:id' => 'contacts#show'

end
