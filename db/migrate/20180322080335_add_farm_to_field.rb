class AddFarmToField < ActiveRecord::Migration[5.1]
  def change
    add_reference :fields, :farm, foreign_key: true, index: true
  end
end
