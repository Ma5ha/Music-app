require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "get user" do
    get user_path
    assert_response :success
  end

  test "get show user" do
    get show_user_path
    assert_response :success
  end
  test "get signup" do
    get signup_path
    assert_response :success
  end


end
