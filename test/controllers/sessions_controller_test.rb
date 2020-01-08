require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  

  test "get login " do
    get login_path controller: "sessions", action: "new"
    assert_response :success
  end

  test "post login " do 
    get login_path controller: "sessions", action: "create"
    assert_response :success
  end
 
  
end
