class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :
      t.string :name
      t.integer :price
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
