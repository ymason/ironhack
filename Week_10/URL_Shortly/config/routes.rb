Rails.application.routes.draw do

  get "/" => "links#new"

  resources :links, only: [:create, :show]
  
  get "/:shortlink" => "links#index"

  # get "/links/:id" => "links#show"
  # post "/links" => "links#create"

end