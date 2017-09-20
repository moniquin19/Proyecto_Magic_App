require 'test_helper'

class CartasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cartas_index_url
    assert_response :success
  end

end
