class AddAreaToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :area, :integer, null: false, default: 0
  end
end
