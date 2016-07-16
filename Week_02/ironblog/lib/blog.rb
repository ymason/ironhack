class Blog

	def initialize(all_posts)
		@all_posts = all_posts
		@current_page = 1
		@posts_per_page = 3
	end

	def publish

		first_post = (@current_page - 1) * 3
		last_post = first_post + (@posts_per_page - 1)

		@all_posts[first_post..last_post].each do | single_post |
			single_post.display_post
		end
	end

	def create_posts
		@all_posts.sort_by!{ | post | post.date}
		@all_posts.each do | post |
			post.display_post
		end
	end

	def next_page
		@current_page += 1
	end

	def prev_page
		@current_page -= 1
	end

end

# Attributes
	# Hold a collection of different posts (List of posts)

# Actions (Methods)
	# Publish(aka print) all of the posts