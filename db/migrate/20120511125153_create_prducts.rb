class CreatePrducts < ActiveRecord::Migration
  def change
    create_table :prducts do |t|
      t.string :title
      t.text :description
      t.text :image_url
      t.string :price

      t.timestamps
    end
  end
end
