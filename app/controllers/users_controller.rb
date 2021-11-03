class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_perams)
    if @user.save
      reset_session
      log_in @user
      flash[:success] = "Welcome to Iron Tiwtter!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_perams
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
