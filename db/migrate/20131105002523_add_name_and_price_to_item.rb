class AddNameAndPriceToItem < ActiveRecord::Migration
  def change
    add_column :items, :name, :string
    add_column :items, :price, :string
  end
end
