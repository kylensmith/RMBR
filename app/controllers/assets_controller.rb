class AssetsController < ApplicationController

def create
	puts "******&&&&&******&&&&*******"
	@asset = Asset.new(asset_params, event_id: params[:id], user_id: current_user.id )
	@asset.save

end


private

def asset_params
    params.require(:asset).permit(:media_name, :description)
  end

end
