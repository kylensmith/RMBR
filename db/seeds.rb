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
EventUser.create(user_id: 1, event_id: 2)

EventFollower.create(user_id: 1, event_id: 1, follow_status: 1)
EventFollower.create(user_id: 1, event_id: 2, follow_status: 1)


User.create(password: "Thisisatest", avatar: "demo.jpg", email: "kns@gmail.com")
Profile.create(user_id: 1, fname: "KN", lname: "Smith", bio: "Photography hobbyist", hometown_city: "Coos Bay", hometown_state: "Oregon", current_city: "Philadelphia", current_state: "PA")


User.create(password: "Thisisatest", avatar: "demo.jpg", email: "kevin@gmail.com")
Profile.create(user_id: 2, fname: "Kev", lname: "Kev", bio: "I Photoshop", hometown_city: "Philadelphia", hometown_state: "Pa", current_city: "Philadelphia", current_state: "PA")

EventFollower.create(user_id: 2, event_id: 1, follow_status: 1)
EventFollower.create(user_id: 2, event_id: 2, follow_status: 0)
# follow_status is for sending a request to be able to follow private events. 1 is following, 0 is requested. 2 is no longer following.

User.create(password: "Thisisatest", avatar: "demo.jpg", email: "jon@gmail.com")
Profile.create(user_id: 3, fname: "Jon", lname: "Jones", bio: "Ruby me a Gem", hometown_city: "Philadelphia", hometown_state: "Pa", current_city: "Philadelphia", current_state: "PA")
EventFollower.create(user_id: 3, event_id: 2, follow_status: 0)