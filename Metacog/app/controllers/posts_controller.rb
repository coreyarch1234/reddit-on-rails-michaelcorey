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

private

  def post_params
      params.require(:post).permit(:title, :body)
  end
end
