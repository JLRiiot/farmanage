class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :name, limit: 100
      t.datetime :bought_on
      t.references :grower, index: true, foreign_key: true

      t.timestamps
    end
  end
end
