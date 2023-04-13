class CreateCollars < ActiveRecord::Migration[7.0]
  def change
    create_table :collars do |t|
      t.string :name
      t.string :color
      t.string :secondary_color
      t.string :image_url

      t.timestamps
    end
  end
end
