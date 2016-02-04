class ProfilesController < ApplicationController
  def create
  end

  def new
  end


  def index
  end

  def show

    @userfollower = UserFollower.new
  	@profile = Profile.find(params[:id])
  	@fname = Profile.find(params[:id]).fname
  	@lname = Profile.find(params[:id]).lname
  	@bio = Profile.find(params[:id]).bio
  	@member_since = Profile.find(params[:id]).user.created_at
  	@hometown_city = Profile.find(params[:id]).hometown_city
    @hometown_state = Profile.find(params[:id]).hometown_state
    @current_city = Profile.find(params[:id]).current_city
    @current_state = Profile.find(params[:id]).current_state
      if current_user
      @id = current_user.id
      end
      # @image = @profile.avatar.current_path
  end

  def edit
    @profile = Profile.find(params[:id])
    # @image = @profile.avatar.current_path

  end

   def update
    @profile = Profile.find_by_id(params[:id])
      if @profile.update(profile_update)
        @profile.avatar = profile_update[:avatar]
        @profile.save
      # redirect_to @profile

      redirect_to profile_path
    else
      render 'edit'
    end
    # x.save
    #  redirect_to profile_path
  end



private

def profile_update
    params.require(:profile).permit(:fname, :avatar, :lname, :bio, :hometown_state, :hometown_city, :current_state, :current_city )
  end


end

