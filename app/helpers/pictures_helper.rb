module PicturesHelper

	def pic_profile
	 Profile.find_by_user_id(@picture.user_id)
	end

	def pic_event
	 Event.find_by_id(@picture.event_id)
	end
	def who_said(comment)
		Profile.find_by_user_id(comment)
	end



end
