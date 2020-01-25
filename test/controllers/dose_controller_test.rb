require 'test_helper'

class DoseControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get dose_show_url
    assert_response :success
  end

end
