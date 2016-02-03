class PicturesController < ApplicationController
	def create
	puts "******&&&&&******&&&&*******"
	@asset = Picture.new(asset_params)
	@asset.save
	# session[:return_to] ||= request.referer
	redirect_to request.referer

end


private

def asset_params
    params.require(:picture).permit(:picture_file, :description, :event_id, :user_id)
  end
end
