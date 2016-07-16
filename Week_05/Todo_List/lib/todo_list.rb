require 'yaml/store'
require_relative "store_list.rb"

class TodoList
    attr_reader :tasks, :user
    include StoreList

    def initialize(user)
    	@todo_store = YAML::Store.new("./public/tasks.yml")
        @tasks = []
        @user = user
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task(id)
    	@tasks.delete_if do | task |
	    	task.id == id
    	end
    end

    def find_task_by_id(id)
    	task = @tasks.find do | task |
    		task.id == id
    	end
        task
    end

    def sort_by_created(direction)
    	sorted_tasks = @tasks.sort do | task1, task2 |

    		if direction == "ASC"
    			task1.created_at <=> task2.created_at
    		elsif direction == "DSC"
    			task2.created_at <=> task1.created_at
	    	end
   	 	end
    	sorted_tasks
    end
end

 #    def save
 #  		@todo_store.transaction do 
 #      	@todo_store[@user] = @tasks
 # 		 end
	# end

	# def load_tasks
 #  		@todo_store.transaction do 
 #      		@tasks = @todo_store[@user]
 #      	end
 # 	end