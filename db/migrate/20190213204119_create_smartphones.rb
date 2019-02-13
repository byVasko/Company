class CreateSmartphones < ActiveRecord::Migration[5.1]
  def change
    create_table :smartphones do |t|
      t.string :title
      t.string :display
      t.string :processor
      t.string :ram
      t.string :rom
      t.string :battery
      t.string :os

      t.timestamps
    end
  end
end
