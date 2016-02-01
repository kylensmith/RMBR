class ProfilesController < ApplicationController
  def create
  end

  def new
  end

  def index
  end

  def show
  	@profile = Profile.find(params[:id])
  	@fname = Profile.find(params[:id]).fname
  	@lname = Profile.find(params[:id]).lname
  	@bio = Profile.find(params[:id]).bio
  	@fname = Profile.find(params[:id]).fname
  	@member_since = Profile.find(params[:id]).user.created_at
  	@hometown_city = Profile.find(params[:id]).hometown_city
    @hometown_state = Profile.find(params[:id]).hometown_state
    @current_city = Profile.find(params[:id]).current_city
    @current_state = Profile.find(params[:id]).current_state
    if current_user
    @id = current_user.id
  end
  
  end
end
