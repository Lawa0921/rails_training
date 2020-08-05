class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.boolean :public
      t.integer :status
      t.integer :price
      t.decimal :discount
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
