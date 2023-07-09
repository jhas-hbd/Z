class AddCostToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :cost, :integer, null: false, default: 0
  end
end
