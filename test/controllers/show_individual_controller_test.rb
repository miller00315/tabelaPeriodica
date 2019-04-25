require 'test_helper'

class ShowIndividualControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_individual_index_url
    assert_response :success
  end

end
