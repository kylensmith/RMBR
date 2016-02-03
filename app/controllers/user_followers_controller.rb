class UserFollowersController < ApplicationController
	def create
		# Checks to see if the same user and follower combination exists.  If it does, it deletes it.  If it does not exist, it is created.
			if UserFollower.exists?(follow)
				UserFollower.where(follow).destroy_all
			else
			UserFollower.create(follow)
			end
		# Redirects to page of origin
		redirect_to request.referer
	end

	private

	def follow
		params.require(:user_follower).permit(:user_id, :user_being_followed_id)
	end
end
