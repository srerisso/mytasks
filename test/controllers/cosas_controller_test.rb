require 'test_helper'

class CosasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cosas_index_url
    assert_response :success
  end

end
