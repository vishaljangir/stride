require "application_system_test_case"

class TrainingVideosTest < ApplicationSystemTestCase
  setup do
    @training_video = training_videos(:one)
  end

  test "visiting the index" do
    visit training_videos_url
    assert_selector "h1", text: "Training Videos"
  end

  test "creating a Training video" do
    visit training_videos_url
    click_on "New Training Video"

    click_on "Create Training video"

    assert_text "Training video was successfully created"
    click_on "Back"
  end

  test "updating a Training video" do
    visit training_videos_url
    click_on "Edit", match: :first

    click_on "Update Training video"

    assert_text "Training video was successfully updated"
    click_on "Back"
  end

  test "destroying a Training video" do
    visit training_videos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training video was successfully destroyed"
  end
end
