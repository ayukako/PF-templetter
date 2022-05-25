class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.integer :customer_id, null: false
      t.integer :item_id, null: false
      t.integer :postal_code, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :sender_postal_code, null: false
      t.string :sender_address, null: false
      t.string :sender, null: false
      t.string :payment, null: false
      t.string :payment_method, null: false
      t.boolean :is_complete, default: false, null: false


      t.timestamps
    end
  end
end
