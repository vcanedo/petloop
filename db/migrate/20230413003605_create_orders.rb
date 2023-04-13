class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :address
      t.date :deadline
      t.references :collar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
