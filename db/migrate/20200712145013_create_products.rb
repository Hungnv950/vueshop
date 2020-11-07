class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :before_price
      t.boolean :is_hot
      t.date :guarantee_date
      t.integer :count
      t.text :thumbnail_url

      t.timestamps
    end
  end
end
