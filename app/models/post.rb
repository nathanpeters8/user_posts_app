class Post < ApplicationRecord
    # A post belongs to a user
    belongs_to :user
end
