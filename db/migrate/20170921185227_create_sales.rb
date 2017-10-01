class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :price
      t.references :car, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
