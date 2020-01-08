require 'test_helper'

class FrontPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get root_path
    assert_response :success
  end

end
