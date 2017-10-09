class CreateReaders < ActiveRecord::Migration[5.0]
  def change
    create_table :readers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.datetime :birthdate

      t.timestamps
    end
  end
end
