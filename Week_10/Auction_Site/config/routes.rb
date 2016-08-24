Rails.application.routes.draw do
  devise_for :users
  resources :users,  only: [:new, :show, :create, :destroy] do
  	resources :products, only: [:new, :show, :create, :index]
  end
  
  get '/products' => 'products#all', as: :products
  
  post '/products/:product_id/bids' => 'bids#create', as: :user_bids

  post 'users/:user_id/products/:id/reviews' => 'reviews#create', as: :reviews

end
