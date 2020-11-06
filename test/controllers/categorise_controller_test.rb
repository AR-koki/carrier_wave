require 'test_helper'

class CategoriseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categorise_index_url
    assert_response :success
  end

end
