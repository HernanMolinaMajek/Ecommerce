class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.belongs_to :product, index: true
      t.belongs_to :sale, index: true
      t.float :sub_total
      t.integer :cantidad

      t.timestamps
    end
  end
end
