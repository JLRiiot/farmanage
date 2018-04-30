class Grower < ApplicationRecord
    has_many :farms
    
    validates :email, uniqueness: true, email: true, allow_blank: true
    validates :first_name, :last_name, :email, presence: true
    validates :preferred_shipping, inclusion: { in: %w(2DAY 1WEEK 1MONTH) }
    
    def to_s
        "#{self.first_name} #{self.last_name}"
    end
end
