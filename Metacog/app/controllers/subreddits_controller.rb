class SubredditsController < ApplicationController
    def index
        @subreddits = Subreddit.all
    end

  def new
      @subreddit = Subreddit.new
  end

  def show
      @subreddit = Subreddit.find(params[:id])
      @post = @subreddit.posts.new
  end

  def edit
      @subreddit = Subreddit.find(params[:id])
  end

  def update
      @subreddit = Subreddit.find(params[:id])
      @subreddit.update_attributes(subreddit_params)
      redirect_to(controller: "subreddit", action: "show", id: @subreddit.id)
  end

  def create
      @subreddit = Subreddit.create(subreddit_params)
      redirect_to(controller: "subreddits", action: "show", id: @subreddit.id)
  end

  private

  def subreddit_params
      params.require(:subreddit).permit(:name, :description)
  end

end
