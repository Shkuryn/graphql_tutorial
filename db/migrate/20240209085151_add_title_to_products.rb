class AddTitleToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :title, :string
  end
end
