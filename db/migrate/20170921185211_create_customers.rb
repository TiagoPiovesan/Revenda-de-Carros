class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :phone
      t.string :cellular
      t.integer :sex
      t.date :birth

      t.timestamps null: false
    end
  end
end
