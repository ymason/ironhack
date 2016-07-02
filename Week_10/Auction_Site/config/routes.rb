Rails.application.routes.draw do
  resources :users,  only: [:new, :show, :create, :destroy] do
  	resources :products, only: [:new, :show, :create, :index]
  end
  resources :products, only: [:index, :destroy]

end
