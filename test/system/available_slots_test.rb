require "application_system_test_case"

class AvailableSlotsTest < ApplicationSystemTestCase
  setup do
    @available_slot = available_slots(:one)
  end

  test "visiting the index" do
    visit available_slots_url
    assert_selector "h1", text: "Available Slots"
  end

  test "creating a Available slot" do
    visit available_slots_url
    click_on "New Available Slot"

    fill_in "Date from", with: @available_slot.date_from
    fill_in "Date to", with: @available_slot.date_to
    fill_in "Fees", with: @available_slot.fees
    fill_in "Time from", with: @available_slot.time_from
    fill_in "Time to", with: @available_slot.time_to
    click_on "Create Available slot"

    assert_text "Available slot was successfully created"
    click_on "Back"
  end

  test "updating a Available slot" do
    visit available_slots_url
    click_on "Edit", match: :first

    fill_in "Date from", with: @available_slot.date_from
    fill_in "Date to", with: @available_slot.date_to
    fill_in "Fees", with: @available_slot.fees
    fill_in "Time from", with: @available_slot.time_from
    fill_in "Time to", with: @available_slot.time_to
    click_on "Update Available slot"

    assert_text "Available slot was successfully updated"
    click_on "Back"
  end

  test "destroying a Available slot" do
    visit available_slots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Available slot was successfully destroyed"
  end
end
