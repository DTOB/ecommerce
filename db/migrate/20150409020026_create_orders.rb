class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate
      t.integer :customer_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
