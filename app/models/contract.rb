class Contract < ApplicationRecord
  belongs_to :agronomist
  belongs_to :farm
end
