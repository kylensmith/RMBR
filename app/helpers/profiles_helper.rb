module ProfilesHelper
	def verify
		@id == @profile.user.id
	end


	def follow_state(current_user, profile)
		if UserFollower.where(user_id: current_user, user_being_followed_id: profile)

			@user = UserFollower.where(user_id: current_user, user_being_followed_id: profile)
			@user_id = @user.pluck(:id)
			@status = UserFollower.find_by_id(@user_id).follow_status
			if @status == 0
				:follow
			else
				:unfollow
			end
		end
	end
end
