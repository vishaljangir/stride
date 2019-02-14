require "application_system_test_case"

class NewsLatestsTest < ApplicationSystemTestCase
  setup do
    @news_latest = news_latests(:one)
  end

  test "visiting the index" do
    visit news_latests_url
    assert_selector "h1", text: "News Latests"
  end

  test "creating a News latest" do
    visit news_latests_url
    click_on "New News Latest"

    fill_in "Description", with: @news_latest.description
    fill_in "Name", with: @news_latest.name
    click_on "Create News latest"

    assert_text "News latest was successfully created"
    click_on "Back"
  end

  test "updating a News latest" do
    visit news_latests_url
    click_on "Edit", match: :first

    fill_in "Description", with: @news_latest.description
    fill_in "Name", with: @news_latest.name
    click_on "Update News latest"

    assert_text "News latest was successfully updated"
    click_on "Back"
  end

  test "destroying a News latest" do
    visit news_latests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News latest was successfully destroyed"
  end
end
