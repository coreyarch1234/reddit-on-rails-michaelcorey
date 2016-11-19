class Post < ApplicationRecord

    has_many :comments, dependent: :destroy
    belongs_to :subreddit
    validates :title, :body, presence: true
end
