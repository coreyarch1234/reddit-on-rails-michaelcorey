class CommentsController < ApplicationController
  # def index
  #     @comments = Comment.all
  # end
  #
  # def new
  #     @comments = Comment.new
  # end

  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)

      if @comment.save
          redirect_to(@post)
          flash[:notice] = "Comment saved successfully."
      else
          redirect_to(@post)
          flash[:notice] = "Comment could not be saved."
      end
  end

  def destroy
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.new(comment_params)
    # @post.comments.find(params[:id]).destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    flash[:success] = "Comment deleted"
    redirect_to(@post)
  end


  # Comment params
  private
  def comment_params
      params.require(:comment).permit(:body)
  end

end
