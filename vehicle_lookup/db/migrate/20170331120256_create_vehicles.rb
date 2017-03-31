class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.decimal :price
      t.string :registration
      t.string :manufacturer

      t.timestamps
    end
  end
end
