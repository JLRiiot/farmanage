require 'test_helper'

class AgronomistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agronomist = agronomists(:one)
  end

  test "should get index" do
    get agronomists_url
    assert_response :success
  end

  test "should get new" do
    get new_agronomist_url
    assert_response :success
  end

  test "should create agronomist" do
    assert_difference('Agronomist.count') do
      post agronomists_url, params: { agronomist: { birthday: @agronomist.birthday, first_name: @agronomist.first_name, last_name: @agronomist.last_name } }
    end

    assert_redirected_to agronomist_url(Agronomist.last)
  end

  test "should show agronomist" do
    get agronomist_url(@agronomist)
    assert_response :success
  end

  test "should get edit" do
    get edit_agronomist_url(@agronomist)
    assert_response :success
  end

  test "should update agronomist" do
    patch agronomist_url(@agronomist), params: { agronomist: { birthday: @agronomist.birthday, first_name: @agronomist.first_name, last_name: @agronomist.last_name } }
    assert_redirected_to agronomist_url(@agronomist)
  end

  test "should destroy agronomist" do
    assert_difference('Agronomist.count', -1) do
      delete agronomist_url(@agronomist)
    end

    assert_redirected_to agronomists_url
  end
end
