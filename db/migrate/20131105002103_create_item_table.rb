class CreateItemTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :menu
      t.timestamps
    end
  end
end
