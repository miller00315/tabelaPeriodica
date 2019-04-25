require 'test_helper'

class ShowElementControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_element_show_url
    assert_response :success
  end

end
