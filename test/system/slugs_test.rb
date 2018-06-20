require "application_system_test_case"

class SlugsTest < ApplicationSystemTestCase
  setup do
    @slug = slugs(:one)
  end

  test "visiting the index" do
    visit slugs_url
    assert_selector "h1", text: "Slugs"
  end

  test "creating a Slug" do
    visit slugs_url
    click_on "New Slug"

    fill_in "Img", with: @slug.img
    fill_in "Name", with: @slug.name
    click_on "Create Slug"

    assert_text "Slug was successfully created"
    click_on "Back"
  end

  test "updating a Slug" do
    visit slugs_url
    click_on "Edit", match: :first

    fill_in "Img", with: @slug.img
    fill_in "Name", with: @slug.name
    click_on "Update Slug"

    assert_text "Slug was successfully updated"
    click_on "Back"
  end

  test "destroying a Slug" do
    visit slugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slug was successfully destroyed"
  end
end
