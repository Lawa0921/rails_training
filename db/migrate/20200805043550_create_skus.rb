class CreateSkus < ActiveRecord::Migration[6.0]
  def change
    create_table :skus do |t|
      t.string :number, null: false
      t.string :color
      t.string :size
      t.references :good, foreign_key: true

      t.timestamps
    end
  end
end
