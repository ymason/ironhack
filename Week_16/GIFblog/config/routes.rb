Rails.application.routes.draw do 

  get '/' => 'posts#index', as: :all_posts

  get '/posts' => 'posts#new', as: :new_posts
  
  post '/posts' => 'posts#create', as: :posts
  
  get '/posts/:id' => 'posts#show', as: :post

  post '/posts/:id/upvote' => 'posts#upvote', as: :up_vote

  post '/posts/:id/downvote' => 'posts#downvote', as: :down_vote

  get '/posts/:sort_option' => 'posts#sort', as: :posts_sort

  get '/low_posts' => 'posts#low', as: :low_posts

  get '/sort_date' => 'posts#date', as: :sort_date

  get '/sort_votes' => 'posts#votes', as: :sort_votes
end

	# resources :posts,  only: [:new, :show, :create, :destroy]
 #  end