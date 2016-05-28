#Inside of server.rbc
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
# We're going to need to require our class files
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')
require_relative ('lib/store_list.rb')


todo_list = TodoList.new("Josh")

task1 = Task.new("Buy the milk")
task2 = Task.new("Wash the car")
task3 = Task.new("Make my todo list into a web app")

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)

# todo_list.save

# load_tasks = todo_list.load_tasks

# get "/" do
# 	erb :home
# end

get "/tasks" do #Displays all of the tasks
	@todo_list = todo_list.tasks
	erb :tasks_index
end

get "/new_task" do #Displays a form, which posts to /create_task
	erb :new_task
end

post "/create_task" do # Create a new task
	@task = Task.new(params[:task])
	todo_list.add_task(@task) # Add it to the todo_list (with the todo_list.add_task method)
	todo_list.save # Save the todo_list (with the todo_list.save method)
 	redirect to("/tasks") # Redirect the user back to the /tasks route
end

post "/complete_task/:id" do
	@find_task = todo_list.find_task_by_id((params[:complete]).to_i) # Find a task out of your todo_list based on it's id.
	@find_task.complete! # Then, we should mark the task as complete
	todo_list.save # Save the todo list
	redirect to("/tasks")
end

post "/delete_task" do
	todo_list.delete_task((params[:delete]).to_i) # Deletes one specific task from the todolist
	todo_list.save # Save the todo list
	redirect to("/tasks")
end

# <a href="/complete_task/<%= task.id %>"> Complete</a> 
 # <a href="/delete_task">Delete Task</a> 

# Route: '/delete_task/'' (POST) 
# ERB: None
# What does it do?:

# Deletes one specific task from the todolist with the todo_list.delete_task method
# Save the todo list(todo_list.save method)
# Redirects the user back to the task home page
