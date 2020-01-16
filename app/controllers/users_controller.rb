class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    if signed_in?
      @user = User.find_by(id: session[:user_id])
    else
      redirect_to signin_path
    end
  end

  def going
    @event = Event.find(params[:id])
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end
end
