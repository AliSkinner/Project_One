class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.create(user_params)
    if @user.save
      redirect_to user_path(@user)
     else 
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :bio, :twitter, :country, :email, :website, :profile_pic, :remote_profile_pic_url)
  end

end