 cities = [
 	[ name: 'San Francisco' ],
 	[ name: 'Miami' ],
 	[ name: 'Los angeles' ],
 	[ name: 'New York' ]
 ]

cities.each do |name|
  City.create( name: name )
end

concerts = [
	["Prince", "Purple rain", 1 , DateTime.current, 2016, "Prince's elevator"],
	["Tupac", "Thug life", 1 , DateTime.current, 1996, "Las Vegas strip"],
	["Biggie", "Big poppa", 1 , DateTime.current, 1995, "L.A. nightclub"],
	["Michael Jackson", "Neverland", 1 , DateTime.current, 2012, "Night bed"],
	["Boyz 2 Men", "New Jack City", 1 , DateTime.current, 1992, "In some panties" ]
]

concerts.each do |artist, venue, city_id, date, price, description|
  Concert.create( artist: artist, venue: venue, city_id: city_id, date: date, price: price, description: description )
end