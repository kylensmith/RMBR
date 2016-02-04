module SnapsHelper
	def snap_count(picture)
	 Snap.where(picture_id: picture.to_i).count
	end

	def flash_count
	 Flash.where(picture_id: @picture.id).count
	end

	
end
