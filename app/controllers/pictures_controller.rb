class PicturesController < ApplicationController
	def create
		puts "******&&&&&******&&&&*******"
		@asset = Picture.new(asset_params)
		@asset.save
		current_user.pictures << @asset
	# session[:return_to] ||= request.referer
	redirect_to request.referer

end

def show
	@comment = Comment.new
	@flash = Flash.new
	@snap = Snap.new
	@picture = Picture.find_by_id(params[:id])
	@picture_comments = Picture.find(@picture).comments
	
	if current_user
		@id = current_user.id
	end
end
def snap_count
	Snap.all.count
	 # Snap.where(picture_id: @picture.id).count
end

def flash_count
	Flash.where(picture_id: @picture.id).count
end
def populate
	@comment = Comment.new
	@flash = Flash.new
	@snap = Snap.new
	@picture = Picture.find_by_id(params[:id])
	@picture_comments = Picture.find(@picture).comments
	if current_user
		@id = current_user.id
	end
end




	private

	def asset_params
		params.require(:picture).permit(:picture_file, :description, :event_id, :user_id)
	end
end
