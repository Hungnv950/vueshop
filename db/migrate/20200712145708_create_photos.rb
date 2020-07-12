class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :users
      t.references :products
      t.string :subject
      t.string :large_url
      t.string :medium_url
      t.string :small_url
      t.string :image_key
      t.integer :type

      t.timestamps
    end
  end
end
