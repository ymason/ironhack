user1 = User.create(name: "User1", email: "user@gmail.com")
user2 = User.create(name: "User2", email: "user2@gmail.com")
user3 = User.create(name: "User3", email: "user3@gmail.com")

users = [user1, user2, user3]
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
