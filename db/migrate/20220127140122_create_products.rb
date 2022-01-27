class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :short_text
      t.string :youtube_url
      t.text :long_text

      t.timestamps
    end
  end
end
