class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.text :body
      t.string :delivery_adress
      t.string :delivery_time
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
