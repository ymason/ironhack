Rails.application.routes.draw do
  resources :ingredients
  resources :sandwiches, except: [:new, :edit]
end
