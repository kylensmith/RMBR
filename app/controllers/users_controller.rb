class UsersController < ApplicationController
 def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
    if @user.save
      log_in @user
      @id = current_user.id
      Profile.create(user_id: @id)
      flash[:success] = "Welcome to the RMBR!"
      redirect_to @user
    else
      render 'new'
      flash[:failure]
    end
  end


  def index
     
  end

  def update
     
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
     @user = User.find(params[:id])
  end
end
