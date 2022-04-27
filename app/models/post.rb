class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :cover_picture
    has_many :comments, dependent: :delete_all
end
