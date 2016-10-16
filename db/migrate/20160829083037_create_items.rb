class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :name
      t.boolean :real
      t.decimal :weight
      t.string :description	

      t.timestamps
    end
    add_index :items, :price
    add_index :items, :name
  end
end
