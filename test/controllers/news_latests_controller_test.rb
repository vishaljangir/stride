require 'test_helper'

class NewsLatestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_latest = news_latests(:one)
  end

  test "should get index" do
    get news_latests_url
    assert_response :success
  end

  test "should get new" do
    get new_news_latest_url
    assert_response :success
  end

  test "should create news_latest" do
    assert_difference('NewsLatest.count') do
      post news_latests_url, params: { news_latest: { description: @news_latest.description, name: @news_latest.name } }
    end

    assert_redirected_to news_latest_url(NewsLatest.last)
  end

  test "should show news_latest" do
    get news_latest_url(@news_latest)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_latest_url(@news_latest)
    assert_response :success
  end

  test "should update news_latest" do
    patch news_latest_url(@news_latest), params: { news_latest: { description: @news_latest.description, name: @news_latest.name } }
    assert_redirected_to news_latest_url(@news_latest)
  end

  test "should destroy news_latest" do
    assert_difference('NewsLatest.count', -1) do
      delete news_latest_url(@news_latest)
    end

    assert_redirected_to news_latests_url
  end
end
