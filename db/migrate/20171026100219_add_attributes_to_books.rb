class AddAttributesToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column  :books, :pages, :integer
    add_column  :books, :publish_year, :date
    add_index :books, :title
    add_index :books, :author
    add_index :books, :publish_year
  end
end
