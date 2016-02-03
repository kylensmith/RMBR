class SnapsController < ApplicationController
	def create
		# Checks to see if the same user and picture combination exists.  If it does, it deletes it.  If it does not exist, it is created.
			if Snap.exists?(snap_share)
				Snap.where(snap_share).destroy_all
			else
			Snap.create(snap_share)
			end
		# Redirects to page of origin
		redirect_to request.referer
	end

	private

	def snap_share
		params.require(:snap).permit(:user_id, :picture_id)
	end
	
end
