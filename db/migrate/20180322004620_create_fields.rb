class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :name, limit: 100
      t.decimal :area, precision: 18, scale: 2
      t.string :area_unit, limit: 20

      t.timestamps
    end
  end
end
