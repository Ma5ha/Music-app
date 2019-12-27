require 'test_helper'

class PlayListsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get play_lists_show_url
    assert_response :success
  end

end
