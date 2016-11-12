require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post is valid" do
    @post = Post.new()
    assert_not @post.valid?
  end
end
