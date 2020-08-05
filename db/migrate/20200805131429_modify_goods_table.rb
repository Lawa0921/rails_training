class ModifyGoodsTable < ActiveRecord::Migration[6.0]
  def up
    remove_column :goods, :number
    remove_column :goods, :color
    remove_column :goods, :size
    add_column :goods, :sku, :string, null: false, default: ""
  end
  def down
    add_column :goods, :number, :string
    add_column :goods, :size, :integer
    add_column :goods, :color, :integer
    remove_column :goods, :sku
  end
end
