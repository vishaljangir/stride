require 'test_helper'

class NewsFirstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_first = news_firsts(:one)
  end

  test "should get index" do
    get news_firsts_url
    assert_response :success
  end

  test "should get new" do
    get new_news_first_url
    assert_response :success
  end

  test "should create news_first" do
    assert_difference('NewsFirst.count') do
      post news_firsts_url, params: { news_first: { description: @news_first.description, heading: @news_first.heading } }
    end

    assert_redirected_to news_first_url(NewsFirst.last)
  end

  test "should show news_first" do
    get news_first_url(@news_first)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_first_url(@news_first)
    assert_response :success
  end

  test "should update news_first" do
    patch news_first_url(@news_first), params: { news_first: { description: @news_first.description, heading: @news_first.heading } }
    assert_redirected_to news_first_url(@news_first)
  end

  test "should destroy news_first" do
    assert_difference('NewsFirst.count', -1) do
      delete news_first_url(@news_first)
    end

    assert_redirected_to news_firsts_url
  end
end
