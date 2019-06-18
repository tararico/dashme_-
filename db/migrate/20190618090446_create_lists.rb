class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.text :description
      add_reference :dashmebuttons, foreign_key: true
      t.timestamps
    end
  end
end
