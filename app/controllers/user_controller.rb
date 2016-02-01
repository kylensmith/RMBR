class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
      flash[:failure]
    end
  end

  def new
  end

  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
  end
end




  

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end


