class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :category
      t.string :prefecture

      t.timestamps
    end
  end
end
