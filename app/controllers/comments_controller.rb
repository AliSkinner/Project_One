class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @song = Song.find(params[:id])
  end

  def create 
    @user = User.find(params['comment'][:user_id])
    # @song = Song.find(params[:id])
    @comment = Comment.create(comment_params)
    # binding.pry
    redirect_to :back
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :song_id, :content)
  end

end
