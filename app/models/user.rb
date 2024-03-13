class User < ApplicationRecord
    # A user has many posts
    has_many :posts
end
