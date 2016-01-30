class UserFollower < ActiveRecord::Base
	belongs_to :user 
	belongs_to :user_being_followed, class_name: "User"
end
