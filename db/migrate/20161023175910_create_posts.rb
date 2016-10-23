class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :product_name
      t.text :product_description
      t.date :date
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
