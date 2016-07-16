require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/sponsored')

post = Post.new("We made it!", Time.now+20000, "Some cool content")
post1 = Sponsored.new("Trophies", Time.now+6000, "Some cool content")
post2 = Post.new("Summer Six66ten", Time.now+12000, "Some cool content")
post3 = Post.new("Hotline bling!", Time.now+1800, "Some cool content")

new_posts = [post, post1, post2, post3]

new_blog = Blog.new(new_posts)

new_blog.publish

puts "For next page type next and for previous type prev."

input = gets.chomp
	if input == "next"
		new_blog.next_page
		new_blog.publish
	elsif input == "prev"
		new_blog.prev_page
		new_blog.publish
	else
		puts "Sorry no more."
	end