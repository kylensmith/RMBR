module ProfilesHelper
	def verify
		@id == @profile.user.id
	end


	def follow_state(this_user, profile)
		# puts "%%%%%%%%%%%%%% USER IS #{this_user.inspect} and PROFILE IS #{profile.inspect} %%%%%%%%%%%%%%%%%%%%%%"
		# puts "%%%%%%%%%%%%%% USER STATUS #{this_user.user_being_followeds.include? profile} %%%%%%%%%%%%%%%%%%%%%%"
		# uf = UserFollower.where(user_id: current_user, user_being_followed_id: profile)
		if this_user.user_being_followeds.include? profile.user
			# puts "THIS IS TRUE *************"
			follow_record = this_user.user_followers.where(user_being_followed_id: profile.user.id).first
			# puts "THIS IS STATUS ************* #{follow_record.follow_status}"

			return follow_record.show_status
		else
			return "Follow"
		end
	end	
end
