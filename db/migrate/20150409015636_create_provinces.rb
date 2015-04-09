class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
