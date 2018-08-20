class CommentController < ApplicationController
  def create
    comment = Comment.new
    comment.content = params[:content]
    comment.board_id = params[:board_id]
    comment.save
    
    redirect_to :back
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    comment.destroy
    
    redirect_to :back
  end
end