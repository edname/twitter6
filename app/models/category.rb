class Category < ApplicationRecord
    validates :name, :description, :url_seo, presence: true
    validates :name, :description, :url_seo, uniqueness: true
    has_many :products
    has_rich_text :description
end
