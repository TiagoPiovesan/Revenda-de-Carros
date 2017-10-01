class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.date :manufacture
      t.string :color
      t.integer :kilometer
      t.string :board
      t.decimal :fipe
      t.integer :sinister
      t.integer :status

      t.timestamps null: false
    end
  end
end
