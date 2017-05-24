class CommentsController < ApplicationController

  def create

    comment = Comment.new
    comment.content = params[:content]
    comment.post_id = params[:post_id]
    comment.save

    redirect_to '/'
  end
end
