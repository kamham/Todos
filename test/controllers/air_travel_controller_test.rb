require 'test_helper'

class AirTravelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get air_travel_index_url
    assert_response :success
  end

end
