class AddUrlSeoToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :url_seo, :string
  end
end
