require "application_system_test_case"

class SlidersTest < ApplicationSystemTestCase
  setup do
    @slider = sliders(:one)
  end

  test "visiting the index" do
    visit sliders_url
    assert_selector "h1", text: "Sliders"
  end

  test "creating a Slider" do
    visit sliders_url
    click_on "New Slider"

    click_on "Create Slider"

    assert_text "Slider was successfully created"
    click_on "Back"
  end

  test "updating a Slider" do
    visit sliders_url
    click_on "Edit", match: :first

    click_on "Update Slider"

    assert_text "Slider was successfully updated"
    click_on "Back"
  end

  test "destroying a Slider" do
    visit sliders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slider was successfully destroyed"
  end
end
