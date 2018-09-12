class AddRecipientToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :recipient, :integer
  end
end
