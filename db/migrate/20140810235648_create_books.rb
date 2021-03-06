class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_last_name
      t.string :author_first_name
      t.string :isbn
      t.string :illustrator

      t.timestamps
    end
  end
end
