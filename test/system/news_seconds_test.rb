require "application_system_test_case"

class NewsSecondsTest < ApplicationSystemTestCase
  setup do
    @news_second = news_seconds(:one)
  end

  test "visiting the index" do
    visit news_seconds_url
    assert_selector "h1", text: "News Seconds"
  end

  test "creating a News second" do
    visit news_seconds_url
    click_on "New News Second"

    fill_in "Description", with: @news_second.description
    fill_in "Heading", with: @news_second.heading
    click_on "Create News second"

    assert_text "News second was successfully created"
    click_on "Back"
  end

  test "updating a News second" do
    visit news_seconds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @news_second.description
    fill_in "Heading", with: @news_second.heading
    click_on "Update News second"

    assert_text "News second was successfully updated"
    click_on "Back"
  end

  test "destroying a News second" do
    visit news_seconds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News second was successfully destroyed"
  end
end
