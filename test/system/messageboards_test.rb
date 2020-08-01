require "application_system_test_case"

class MessageboardsTest < ApplicationSystemTestCase
  setup do
    @messageboard = messageboards(:one)
  end

  test "visiting the index" do
    visit messageboards_url
    assert_selector "h1", text: "Messageboards"
  end

  test "creating a Messageboard" do
    visit messageboards_url
    click_on "New Messageboard"

    fill_in "Content", with: @messageboard.content
    fill_in "Status", with: @messageboard.status
    fill_in "Subject", with: @messageboard.subject
    click_on "Create Messageboard"

    assert_text "Messageboard was successfully created"
    click_on "Back"
  end

  test "updating a Messageboard" do
    visit messageboards_url
    click_on "Edit", match: :first

    fill_in "Content", with: @messageboard.content
    fill_in "Status", with: @messageboard.status
    fill_in "Subject", with: @messageboard.subject
    click_on "Update Messageboard"

    assert_text "Messageboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Messageboard" do
    visit messageboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Messageboard was successfully destroyed"
  end
end
