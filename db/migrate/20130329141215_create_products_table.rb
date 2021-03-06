class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :cost
      t.float :lat
      t.float :long
      t.string :address
      t.timestamps
    end
  end
end
