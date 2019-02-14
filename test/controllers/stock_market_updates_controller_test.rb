require 'test_helper'

class StockMarketUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_market_update = stock_market_updates(:one)
  end

  test "should get index" do
    get stock_market_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_market_update_url
    assert_response :success
  end

  test "should create stock_market_update" do
    assert_difference('StockMarketUpdate.count') do
      post stock_market_updates_url, params: { stock_market_update: { description: @stock_market_update.description } }
    end

    assert_redirected_to stock_market_update_url(StockMarketUpdate.last)
  end

  test "should show stock_market_update" do
    get stock_market_update_url(@stock_market_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_market_update_url(@stock_market_update)
    assert_response :success
  end

  test "should update stock_market_update" do
    patch stock_market_update_url(@stock_market_update), params: { stock_market_update: { description: @stock_market_update.description } }
    assert_redirected_to stock_market_update_url(@stock_market_update)
  end

  test "should destroy stock_market_update" do
    assert_difference('StockMarketUpdate.count', -1) do
      delete stock_market_update_url(@stock_market_update)
    end

    assert_redirected_to stock_market_updates_url
  end
end
