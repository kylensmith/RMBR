# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(event_name: "Auto Show", event_location: "Expo Center", event_city: "Philly", event_state: "PA", event_description: "Event about cars for the general public", event_start_date: 01012016, event_end_date: 01012016)

Event.create(event_name: "Wedding Expo", event_location: "Meeting Space", event_city: "Camden", event_state: "NJ", event_description: "Everything wedding related!", event_start_date: 01012015, event_end_date: 01012015)

EventUser.create(user_id: 1, event_id: 1)

User.create(email_contact: "kns@kns", password: "123")
Profile.create(user_id: 1, fname: "KN", lname: "Smith")