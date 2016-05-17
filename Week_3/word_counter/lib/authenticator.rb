class Authenticator
	# Stuff from database
	def initialize(name, password)
		@name = name
		@password = password
	end

	def verify(name, password)
		if @name == name && @password = password
			true
		else
			false
		end
	end
end