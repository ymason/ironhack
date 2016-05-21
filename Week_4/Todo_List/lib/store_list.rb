module StoreList
	
		def save
  		@todo_store.transaction do 
      	@todo_store[@user] = @tasks
 		 end
	end

	def load_tasks
  		@todo_store.transaction do 
      		@tasks = @todo_store[@user]
      	end
	end
end