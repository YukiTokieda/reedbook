require "application_system_test_case"

class ReadbooksTest < ApplicationSystemTestCase
  setup do
    @readbook = readbooks(:one)
  end

  test "visiting the index" do
    visit readbooks_url
    assert_selector "h1", text: "Readbooks"
  end

  test "creating a Readbook" do
    visit readbooks_url
    click_on "New Readbook"

    fill_in "Age", with: @readbook.age
    fill_in "Name", with: @readbook.name
    click_on "Create Readbook"

    assert_text "Readbook was successfully created"
    click_on "Back"
  end

  test "updating a Readbook" do
    visit readbooks_url
    click_on "Edit", match: :first

    fill_in "Age", with: @readbook.age
    fill_in "Name", with: @readbook.name
    click_on "Update Readbook"

    assert_text "Readbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Readbook" do
    visit readbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Readbook was successfully destroyed"
  end
end
