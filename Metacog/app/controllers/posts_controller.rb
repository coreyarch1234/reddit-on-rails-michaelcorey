class PostsController < ApplicationController
  def index
      @posts = Post.all()
  end

  def new
      @posts = Post.new
  end

  def create
      @posts = Post.create(post_params)
      if @posts.save
          redirect_to('')
      else
          render 'new'
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
     @post = Post.find(params[:id])
     @post.update_attributes(post_params)
     redirect_to post_path
  end


  # def delete
  #     @post = Post.find(params[:id])
  # end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post deleted"
    redirect_to('')
  end


private

  def post_params
      params.require(:post).permit(:title, :body)
  end
end
