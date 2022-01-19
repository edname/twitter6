class Comment < ApplicationRecord
  validates :content, presence: true
  belongs_to :post
  broadcasts_to :post
end
