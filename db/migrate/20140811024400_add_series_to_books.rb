class AddSeriesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :series, :string
  end
end
