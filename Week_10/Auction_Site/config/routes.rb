Rails.application.routes.draw do
  resources :users,  only: [:new, :show, :create, :destroy] do
  	resources :products, only: [:new, :show, :create, :index]
  end
  
  get '/products' => 'products#all', as: :products
  
  post '/products/:product_id/bids' => 'bids#create', as: :product_bids

end
