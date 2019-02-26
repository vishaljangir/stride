require "application_system_test_case"

class FooterlinksTest < ApplicationSystemTestCase
  setup do
    @footerlink = footerlinks(:one)
  end

  test "visiting the index" do
    visit footerlinks_url
    assert_selector "h1", text: "Footerlinks"
  end

  test "creating a Footerlink" do
    visit footerlinks_url
    click_on "New Footerlink"

    fill_in "Name", with: @footerlink.name
    click_on "Create Footerlink"

    assert_text "Footerlink was successfully created"
    click_on "Back"
  end

  test "updating a Footerlink" do
    visit footerlinks_url
    click_on "Edit", match: :first

    fill_in "Name", with: @footerlink.name
    click_on "Update Footerlink"

    assert_text "Footerlink was successfully updated"
    click_on "Back"
  end

  test "destroying a Footerlink" do
    visit footerlinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Footerlink was successfully destroyed"
  end
end
