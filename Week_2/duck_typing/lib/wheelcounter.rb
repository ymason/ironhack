class WheelCounter
	
	def initialize(list_of_vehicles)
		@list_of_vehicles = list_of_vehicles
	end

	def count_wheels
		@list_of_vehicles.reduce(0) do | sum, vehicle |
			sum + vehicle.wheels
		# total_wheels = 0
		# @list_of_vehicles.each do | vehicle |
		# 	total_wheels += vehicle.wheels
		# puts "All the vehicles combined have a total of #{total_wheels} wheels."
		end
	end
end