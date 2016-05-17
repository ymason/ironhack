require_relative("lib/Car")
require_relative("lib/Engine")

# Honda = Engine.new
# Civic = Car.new("Honda Civic", "Swoosh", Honda)
# Lambo = Engine.new
# Aventador = Car.new("Lamborginhi Aventador", "Boom", Lambo)

# Civic.start
# Aventador.start

v8 = Engine.new("DURRR", 400)
v6 = Engine.new("durr", 200)
electric = Engine.new("Woosh", 350)

tesla = Car.new("Tesla", "Puur", electric)
tesla.start

other_tesla = Car.new("Fake Tesla", "Peew", v8)
other_tesla.startc