project1 = Project.create(name: "Ironhack Teaching", description: "I teach noobs")
project2 = Project.create(name: "Watch Sports", description: "I watch athletes")
project3 = Project.create(name: "Read Articles", description: "I get smarter")
project4 = Project.create(name: "Get Work Done", description: "Bring home the bacon")

projects = [project1, project2, project3, project4]

projects.each do |project|
  (rand(5) + 1).times do |i|
  	project.time_entries.create(hours: rand(24), minutes: rand(60))
	end
end