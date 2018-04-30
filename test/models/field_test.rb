require 'test_helper'

class FieldTest < ActiveSupport::TestCase
  test "should not save a field without required attributes" do
    field = Field.new
    
    assert_not field.valid?, 'Should not be valid when enpty attributes'
    assert field.errors[:name].any?, 'It should have errors for name attribute'
    assert field.errors[:area].any?, 'It should have errors for area attribute'
    assert field.errors[:area_unit].any?, 'It should have errors for area_unit attribute'
  end
  
  test "field area should be greater than 0.01" do
    farm = farms(:default_valid)
    field = fields(:default_valid)
    field.farm = farm
    
    assert field.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      field.errors[:area]
    
    field.area = -1
    assert field.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      field.errors[:area]
    
    field.area = 120
    assert field.valid?
  end

end
