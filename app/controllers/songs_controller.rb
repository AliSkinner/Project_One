class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    # @song.user_id = current_user.id
    @song = Song.create(song_params)

    redirect_to users_path
  end

  private
  def song_params
    params.require(:song).permit(:name, :user_id, :file)
  end

end
