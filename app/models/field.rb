class Field < ApplicationRecord
  belongs_to :farm  # Adding a column farm_id
  has_one :grower, through: :farm
  
  validates :name, :area, :area_unit, presence: true
  validates :area, numericality: { greater_than_or_equal_to: 0.01 }, allow_blank: true
  validates :area_unit, inclusion: { in: %w(hectares acres) }, allow_blank: true
end
