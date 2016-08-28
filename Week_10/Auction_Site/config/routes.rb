Rails.application.routes.draw do
  devise_for :users
  resources :users,  only: [:new, :show, :create, :destroy] do
  	resources :products, only: [:new, :show, :create, :index] do
  		resources :reviews, only: [:destroy, :edit] 
  		# :update - missing??
  	end
  end
  
  root to: 'products#all', as: :products
  
  post '/products/:product_id/bids' => 'bids#create', as: :product_bids

  post 'users/:user_id/rating' => 'ratings#create', as: :user_ratings

  post 'users/:user_id/products/:id/reviews' => 'reviews#create', as: :reviews

  patch '/users/:user_id/products/:product_id/reviews/:id/edit' => 'reviews#update', as: :review_update

end
