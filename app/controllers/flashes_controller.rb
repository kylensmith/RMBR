class FlashesController < ApplicationController
	def create
		# Checks to see if the same user and picture combination exists.  If it does, it deletes it.  If it does not exist, it is created.
			if Flash.exists?(flash_like)
				Flash.where(flash_like).destroy_all
			else
			Flash.create(flash_like)
			end
		# Redirects to page of origin
		redirect_to request.referer
	end

	private

	def flash_like
		params.require(:flash).permit(:user_id, :picture_id)
	end

end
