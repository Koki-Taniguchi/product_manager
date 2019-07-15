class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :shop_id
      t.integer :price
      t.string :title
      t.text :text
      t.string :image_id

      t.timestamps
    end
  end
end
