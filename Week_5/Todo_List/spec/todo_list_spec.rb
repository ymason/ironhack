require_relative "../lib/task.rb"
require_relative "../lib/todo_list.rb"
require "spec_helper"

describe "Sinatra Todo" do 

	before :each do
		@task1 = Task.new("Buy the milk")
		@task2 = Task.new("Wash the car")
		@task3 = Task.new("Make my todo list into a web app")

		@todo_list = TodoList.new("Josh")

		@todo_list.add_task(@task1)
		@todo_list.add_task(@task2)
		
	end

	describe "Task" do
		it "Show the increment in task id" do
			expect(@task2.id).to eq(2)
		end

		it "Show the task was not completed" do
			expect(@task1.complete?).to eq(false)
		end

		it "Show the completion status of task" do
			@task2.complete!
			expect(@task2.complete?).to eq(true)
		end

		it "Change the status from complete to incomplete" do
			@task3.complete!
			@task3.make_incomplete!
			expect(@task3.complete?).to eq(false)
		end

		it "Update content in the task" do
			@task1.update_content!("Buy the car")
			expect(@task1.content).to eq("Buy the car")
		end
	end

	describe "Todo List" do 

		it "Add new task to list" do
			expect((@todo_list.tasks[0]).content).to eq("Buy the milk")
		end

		it "Delete task from list by task id" do
			@todo_list.delete_task(19)
			expect((@todo_list.tasks).length).to eq(1)
		end

		it "Find the task by task id" do
			@task = @todo_list.find_task_by_id(@task1.id)
			expect(@task.content).to eq("Buy the milk")
		end

		it "If doesn't find the task then return nil" do
			@task = @todo_list.find_task_by_id(100)
			expect(@task).to eq(nil)
		end

		it "Sort tasks by task id in ascending order" do
			expect(@todo_list.sort_by_created("ASC")).to eq([@task1, @task2])
		end

		it "Sort tasks by task id in descending order" do
			expect(@todo_list.sort_by_created("DSC")).to eq([@task2, @task1])
		end

		it "Checks for to do list users name" do
			expect(@todo_list.user).to eq("Josh")
		end

		it "Loads our to do list that we saved" do
			@todo_list.save
			save2 = TodoList.new("Josh")

			save2.load_tasks

			expect(save2.tasks.length).to eq(@todo_list.tasks.length)
		end
	end
end
		# it "should tell you when the task was created" do
		# expect(@task3.created_at).to eq(Time.now)
		# end