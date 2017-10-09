class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :reader, foreign_key: true
      t.string :title
      t.string :number
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
