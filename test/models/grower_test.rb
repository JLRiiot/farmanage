require 'test_helper'

class GrowerTest < ActiveSupport::TestCase
 test "should not save with an invalid email" do
   grower = growers(:invalid_email)
   
   assert_not grower.save
 end
end
