class AddCokumnSpendings < ActiveRecord::Migration[7.0]
  def change
    add_column :spendings, :recorded_at, :datetime
  end
end
