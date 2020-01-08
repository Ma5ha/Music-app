require 'test_helper'

class PlayListsControllerTest < ActionDispatch::IntegrationTest
  test "playlist create" do
    #get playlist_create_path  controller: "play_lists", action: "new" 
    assert_routing playlist_create_path, controller: "play_lists", action: "new"
  end

end
