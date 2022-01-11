class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = 'Account created successfully!'
      session[:user_id] = @user.id
      redirect_to profile_path
    else
      render :new
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_confirmation, :password)
  end
end
