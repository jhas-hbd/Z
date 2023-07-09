class AddStayToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :stay, :integer, null: false, default: 0
  end
end
