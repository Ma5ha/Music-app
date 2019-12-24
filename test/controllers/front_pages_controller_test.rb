require 'test_helper'

class FrontPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get front_pages_Home_url
    assert_response :success
  end

end
