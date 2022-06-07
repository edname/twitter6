class Product < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    has_rich_text :long_text
    belongs_to :category
end
