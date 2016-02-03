class UsersController < ApplicationController
 def new
    @user = User.new
  end

  # def create
  #     @user = User.new(user_params)
  #     puts "**********"
  #     puts @user.inspect
  #   if @user.save
  #     @id = @user.id
  #     puts "USER ID *********"
  #     puts @id
  #     Profile.create(user_id: @id)
  #     log_in @user
      
  #     # flash[:success] = "Welcome to the RMBR!"
  #     redirect_to @user
  #   else
  #     @id = @user.id
  #     puts "USER ID *********"
  #     puts @id
  #     render 'new'
  #     flash[:failure]
  #   end
  # end


  def index
     
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update(user_update)
    redirect_to @user.profile
  else
    render 'edit'
  end
    # x.save
    #  redirect_to profile_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
     @user = User.find(params[:id])
  end

  private

def user_params
    params.require(:user).permit(:password, :email)
  end

  def user_update
    params.require(:user).permit(:birthday, :password, :email)
  end
end
