require "application_system_test_case"

class TrainingBlogsTest < ApplicationSystemTestCase
  setup do
    @training_blog = training_blogs(:one)
  end

  test "visiting the index" do
    visit training_blogs_url
    assert_selector "h1", text: "Training Blogs"
  end

  test "creating a Training blog" do
    visit training_blogs_url
    click_on "New Training Blog"

    fill_in "Description", with: @training_blog.description
    fill_in "Name", with: @training_blog.name
    click_on "Create Training blog"

    assert_text "Training blog was successfully created"
    click_on "Back"
  end

  test "updating a Training blog" do
    visit training_blogs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @training_blog.description
    fill_in "Name", with: @training_blog.name
    click_on "Update Training blog"

    assert_text "Training blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Training blog" do
    visit training_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Training blog was successfully destroyed"
  end
end
