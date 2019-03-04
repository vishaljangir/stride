require 'test_helper'

class StrideAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get stride_admin_admin_url
    assert_response :success
  end

end
