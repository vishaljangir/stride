require "application_system_test_case"

class StockMarketUpdatesTest < ApplicationSystemTestCase
  setup do
    @stock_market_update = stock_market_updates(:one)
  end

  test "visiting the index" do
    visit stock_market_updates_url
    assert_selector "h1", text: "Stock Market Updates"
  end

  test "creating a Stock market update" do
    visit stock_market_updates_url
    click_on "New Stock Market Update"

    fill_in "Description", with: @stock_market_update.description
    click_on "Create Stock market update"

    assert_text "Stock market update was successfully created"
    click_on "Back"
  end

  test "updating a Stock market update" do
    visit stock_market_updates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @stock_market_update.description
    click_on "Update Stock market update"

    assert_text "Stock market update was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock market update" do
    visit stock_market_updates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock market update was successfully destroyed"
  end
end
