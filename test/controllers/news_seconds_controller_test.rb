require 'test_helper'

class NewsSecondsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_second = news_seconds(:one)
  end

  test "should get index" do
    get news_seconds_url
    assert_response :success
  end

  test "should get new" do
    get new_news_second_url
    assert_response :success
  end

  test "should create news_second" do
    assert_difference('NewsSecond.count') do
      post news_seconds_url, params: { news_second: { description: @news_second.description, heading: @news_second.heading } }
    end

    assert_redirected_to news_second_url(NewsSecond.last)
  end

  test "should show news_second" do
    get news_second_url(@news_second)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_second_url(@news_second)
    assert_response :success
  end

  test "should update news_second" do
    patch news_second_url(@news_second), params: { news_second: { description: @news_second.description, heading: @news_second.heading } }
    assert_redirected_to news_second_url(@news_second)
  end

  test "should destroy news_second" do
    assert_difference('NewsSecond.count', -1) do
      delete news_second_url(@news_second)
    end

    assert_redirected_to news_seconds_url
  end
end
