class Farm < ApplicationRecord
  belongs_to :grower
  has_many :fields
end
