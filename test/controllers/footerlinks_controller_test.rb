require 'test_helper'

class FooterlinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footerlink = footerlinks(:one)
  end

  test "should get index" do
    get footerlinks_url
    assert_response :success
  end

  test "should get new" do
    get new_footerlink_url
    assert_response :success
  end

  test "should create footerlink" do
    assert_difference('Footerlink.count') do
      post footerlinks_url, params: { footerlink: { name: @footerlink.name } }
    end

    assert_redirected_to footerlink_url(Footerlink.last)
  end

  test "should show footerlink" do
    get footerlink_url(@footerlink)
    assert_response :success
  end

  test "should get edit" do
    get edit_footerlink_url(@footerlink)
    assert_response :success
  end

  test "should update footerlink" do
    patch footerlink_url(@footerlink), params: { footerlink: { name: @footerlink.name } }
    assert_redirected_to footerlink_url(@footerlink)
  end

  test "should destroy footerlink" do
    assert_difference('Footerlink.count', -1) do
      delete footerlink_url(@footerlink)
    end

    assert_redirected_to footerlinks_url
  end
end
