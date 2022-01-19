class Post < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, uniqueness: true
    has_rich_text :content
    has_many :comments, dependent: :destroy
end
