class AddDaysToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :days, :string
  end
end
