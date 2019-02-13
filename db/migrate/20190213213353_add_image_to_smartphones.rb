class AddImageToSmartphones < ActiveRecord::Migration[5.1]
  def change
    add_column :smartphones, :image, :string
  end
end
