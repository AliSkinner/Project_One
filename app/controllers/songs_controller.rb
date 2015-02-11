class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to users_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.update(song_params)
    if @song.save
      redirect_to users_path
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to :back
  end


  private
  def song_params
    params.require(:song).permit(:name, :user_id, :file)
  end

end

