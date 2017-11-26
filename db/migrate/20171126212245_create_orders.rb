class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :pickup
      t.string :size
      t.string :toppings
      t.boolean :ready

      t.timestamps null: false
    end
  end
end
