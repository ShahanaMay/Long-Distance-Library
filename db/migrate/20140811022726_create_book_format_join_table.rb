class CreateBookFormatJoinTable < ActiveRecord::Migration
  def change
    create_table :books_formats, id: false do |t|
      t.belongs_to :book
      t.belongs_to :format
    end
  end
end
