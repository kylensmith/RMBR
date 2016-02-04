class UserFollowersController < ApplicationController
	
	def create
		# Checks to see if the same user and follower combination exists.  If it does, it deletes it.  If it does not exist, it is created.
			if UserFollower.exists?(follow)
				@user = UserFollower.where(follow)
				@user_id = @user.pluck(:id)
				puts "*****************"
				puts UserFollower.find_by_id(@user_id).follow_status
				puts "*****************"
				@status = UserFollower.find_by_id(@user_id).follow_status
				if @status == 0
					UserFollower.find_by_id(@user_id).update(follow_status: 1)
				else
					UserFollower.find_by_id(@user_id).update(follow_status: 0)
				end
			else
			@user = UserFollower.create(follow)
			@user.update(follow_status: 1)
			@user.save
			end
		# Redirects to page of origin
		redirect_to request.referer
	end

	private

	def follow
		params.require(:user_follower).permit(:user_id, :user_being_followed_id)
	end
end
