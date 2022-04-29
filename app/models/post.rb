class Post < ApplicationRecord
    validates_presence_of :title, :body
    belongs_to :user
    has_one_attached :cover_picture
    has_many :comments, dependent: :destroy
end
