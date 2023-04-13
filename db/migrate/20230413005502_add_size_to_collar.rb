class AddSizeToCollar < ActiveRecord::Migration[7.0]
  def change
    add_column :collars, :size, :string
  end
end
