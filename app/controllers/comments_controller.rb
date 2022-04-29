class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @comment = Post.find(params[:post_id]).comments.new(comment_params)
    @comment.assign_attributes(user_id: current_user.id)

    if !@comment.save
      flash[:notice] = @comment.errors.full_messages.to_sentence
    end
    redirect_to post_path(params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
