class AddColumnToGoods < ActiveRecord::Migration[6.0]
  def change
    add_column :goods, :inventory, :integer, default: 0
    change_column_default :goods, :discount, from: nil, to: 1
  end
end
