class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.integer :ask

      t.timestamps null: false
    end
  end
end
