require 'test_helper'

class StrideControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get stride_home_url
    assert_response :success
  end

  test "should get admin" do
    get stride_admin_url
    assert_response :success
  end

end
