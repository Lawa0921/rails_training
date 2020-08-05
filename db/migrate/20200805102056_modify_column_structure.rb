class ModifyColumnStructure < ActiveRecord::Migration[6.0]
  def up
    drop_table :skus
    add_column :goods, :number, :string
    add_column :goods, :size, :integer
    add_column :goods, :color, :integer
  end
  def down
    create_table :skus do |t|
      t.string :number, null: false
      t.string :color
      t.string :size
      t.references :good, foreign_key: true

      t.timestamps
    end
    remove_column :goods, :number
    remove_column :goods, :color
    remove_column :goods, :size
  end
end
