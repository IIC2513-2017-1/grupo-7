require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cart_new_url
    assert_response :success
  end

end
