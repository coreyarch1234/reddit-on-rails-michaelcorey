require 'test_helper'

class SubredditsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    @subreddit = Subreddit.new
    assert_response :success
  end

  test "should get create" do
    @subreddit = Subreddit.create()
    assert_response :success
  end

  test "should get index" do
    get subreddits_index_url
    assert_response :success
  end

end
