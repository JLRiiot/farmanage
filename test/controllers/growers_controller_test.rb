require 'test_helper'

class GrowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grower = growers(:one)
  end

  test "should get index" do
    get growers_url
    assert_response :success
  end

  test "should get new" do
    get new_grower_url
    assert_response :success
  end

  test "should create grower" do
    assert_difference('Grower.count') do
      post growers_url, params: { grower: { email: @grower.email, first_name: @grower.first_name, last_name: @grower.last_name, phone_number: @grower.phone_number } }
    end

    assert_redirected_to grower_url(Grower.last)
  end

  test "should show grower" do
    get grower_url(@grower)
    assert_response :success
  end

  test "should get edit" do
    get edit_grower_url(@grower)
    assert_response :success
  end

  test "should update grower" do
    patch grower_url(@grower), params: { grower: { email: @grower.email, first_name: @grower.first_name, last_name: @grower.last_name, phone_number: @grower.phone_number } }
    assert_redirected_to grower_url(@grower)
  end

  test "should destroy grower" do
    assert_difference('Grower.count', -1) do
      delete grower_url(@grower)
    end

    assert_redirected_to growers_url
  end
end
