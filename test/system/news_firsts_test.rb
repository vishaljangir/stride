require "application_system_test_case"

class NewsFirstsTest < ApplicationSystemTestCase
  setup do
    @news_first = news_firsts(:one)
  end

  test "visiting the index" do
    visit news_firsts_url
    assert_selector "h1", text: "News Firsts"
  end

  test "creating a News first" do
    visit news_firsts_url
    click_on "New News First"

    fill_in "Description", with: @news_first.description
    fill_in "Heading", with: @news_first.heading
    click_on "Create News first"

    assert_text "News first was successfully created"
    click_on "Back"
  end

  test "updating a News first" do
    visit news_firsts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @news_first.description
    fill_in "Heading", with: @news_first.heading
    click_on "Update News first"

    assert_text "News first was successfully updated"
    click_on "Back"
  end

  test "destroying a News first" do
    visit news_firsts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News first was successfully destroyed"
  end
end
