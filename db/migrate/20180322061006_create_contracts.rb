class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :content
      t.references :agronomist, index: true, foreign_key: true
      t.references :farm, index: true, foreign_key: true

      t.timestamps
    end
  end
end
