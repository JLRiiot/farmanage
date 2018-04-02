class CreateAgronomists < ActiveRecord::Migration[5.1]
  def change
    create_table :agronomists do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.datetime :birthday

      t.timestamps
    end
  end
end
