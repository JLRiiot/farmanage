class CreateGrowers < ActiveRecord::Migration[5.1]
  def change
    create_table :growers do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.string :phone_number, limit: 50
      t.string :email, limit: 150

      t.timestamps
    end
  end
end
