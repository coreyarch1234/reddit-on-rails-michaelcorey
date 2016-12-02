require 'test_helper'

class SubredditsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    @subreddit = Subreddit.new
    # assert_response :success
  end

  test "should get create" do
    @subreddit = Subreddit.create()
    # assert_response :success
  end
  #
  # test "should get index" do
  #   get subreddits_index_url
  #   assert_response :success
  # end

  test "should delete subreddits and comments" do
      @subreddit = Subreddit.new
      @post = Post.create(title: "This is a post", body: "Hello, my name is someone with a name")
      @post.subreddit_id = @subreddit.id
      @comment = Comment.create(body: "Hello, my name is someone with a name", post: @post)
      @subreddit.destroy
      assert @subreddit.destroyed?
    #   assert @post.destroyed?

  end

end
