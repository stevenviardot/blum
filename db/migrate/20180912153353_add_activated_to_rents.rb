class AddActivatedToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :activated, :boolean, :default => false
  end
end
