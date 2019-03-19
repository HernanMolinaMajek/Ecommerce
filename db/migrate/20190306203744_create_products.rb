class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.belongs_to :category, index: true
      t.string :nombre
      t.string :descripcion
      t.float :precio
      t.integer :cantidad

      t.timestamps
    end
  end
end
