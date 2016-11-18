class Post < ApplicationRecord
<<<<<<< HEAD
=======

>>>>>>> a9dc0c0fcc93cd1d1ac95629536b092354a9da72
    has_many :comments, dependent: :destroy
    validates :title, :body, presence: true
end
