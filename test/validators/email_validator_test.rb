ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../../config/environment', __FILE__)
require 'rails/test_help'

module ValidatorTest
  ValidableEntity = Struct.new(:email) do
    include ActiveModel::Validations
    
    validates :email, email: true
  end
end

class EmailValidatorTest < ActiveSupport::TestCase
  test "well formatted email should be valid" do
    subject = ValidatorTest::ValidableEntity.new('well.formatted@email.com')
    
    assert subject.valid?
  end
    
  test "wrong formatted email should not be valid" do
    subject = ValidatorTest::ValidableEntity.new('wrong.formatted @email.com')
    
    assert subject.invalid?
  end
end