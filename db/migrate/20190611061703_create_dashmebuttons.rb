class CreateDashmebuttons < ActiveRecord::Migration[5.2]
  def change
    create_table :dashmebuttons do |t|
      t.string :name
      t.string :shop

      t.timestamps
    end
  end
end
