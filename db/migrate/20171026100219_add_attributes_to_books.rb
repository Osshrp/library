class AddAttributesToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column  :books, :pages, :integer
    add_column  :publish_year, :date
    add_index :books, :title
    add_index :books, :body
    add_index :books, :author
    add_index :books, :publish_year
  end
end
