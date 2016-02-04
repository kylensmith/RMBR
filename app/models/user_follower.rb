class UserFollower < ActiveRecord::Base
	belongs_to :user 
	belongs_to :user_being_followed, class_name: "User"

	def show_status
		if self.follow_status == 1
			return "Unfollow"
		else
			return "Follow"
		end
	end
end
