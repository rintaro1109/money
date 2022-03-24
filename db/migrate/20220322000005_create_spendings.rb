class CreateSpendings < ActiveRecord::Migration[7.0]
  def change
    create_table :spendings do |t|
      t.integer :price
      t.string :memo
      t.references :tag
      t.timestamps
    end
  end
end
