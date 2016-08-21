class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, index: true
      t.references :book, index: true
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :order_items, :orders
    add_foreign_key :order_items, :books
  end
end
