require "application_system_test_case"

class AuthorbooksTest < ApplicationSystemTestCase
  setup do
    @authorbook = authorbooks(:one)
  end

  test "visiting the index" do
    visit authorbooks_url
    assert_selector "h1", text: "Authorbooks"
  end

  test "creating a Authorbook" do
    visit authorbooks_url
    click_on "New Authorbook"

    fill_in "Author", with: @authorbook.author_id
    fill_in "Book", with: @authorbook.book_id
    click_on "Create Authorbook"

    assert_text "Authorbook was successfully created"
    click_on "Back"
  end

  test "updating a Authorbook" do
    visit authorbooks_url
    click_on "Edit", match: :first

    fill_in "Author", with: @authorbook.author_id
    fill_in "Book", with: @authorbook.book_id
    click_on "Update Authorbook"

    assert_text "Authorbook was successfully updated"
    click_on "Back"
  end

  test "destroying a Authorbook" do
    visit authorbooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authorbook was successfully destroyed"
  end
end
