class UsersController < ApplicationController

  before_action :authenticate_user!
  authorize_resource

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
    binding.pry
    @user = User.create(user_params)
    if @user.save
      redirect_to user_path(@user)
     else 
      render 'new'
    end
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :bio, :twitter, :country, :email, :website, :profile_pic, :remote_profile_pic_url)
  end

end