contact_list = [
  [ "Madrid", "Sunny terrace", "555-212-1232", "guest@mycrib.com" ],
  [ "Barcelona", "Cozy Studio", "555-312-2341", "best@believe.com"],
  [ "Miami", "Huge bungalow in the woods", "555-153-2596", "your@heart.com"],
  [ "Málaga", "House with a pool 4r 3b", "1-800-STLYOB", "crazy@batsh.com"]
]

contact_list.each do |name, address, phone, email|
  Contact.create( name: name, address: address, phone: phone, email: email )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
