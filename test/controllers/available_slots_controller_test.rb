require 'test_helper'

class AvailableSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_slot = available_slots(:one)
  end

  test "should get index" do
    get available_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_available_slot_url
    assert_response :success
  end

  test "should create available_slot" do
    assert_difference('AvailableSlot.count') do
      post available_slots_url, params: { available_slot: { date_from: @available_slot.date_from, date_to: @available_slot.date_to, fees: @available_slot.fees, time_from: @available_slot.time_from, time_to: @available_slot.time_to } }
    end

    assert_redirected_to available_slot_url(AvailableSlot.last)
  end

  test "should show available_slot" do
    get available_slot_url(@available_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_slot_url(@available_slot)
    assert_response :success
  end

  test "should update available_slot" do
    patch available_slot_url(@available_slot), params: { available_slot: { date_from: @available_slot.date_from, date_to: @available_slot.date_to, fees: @available_slot.fees, time_from: @available_slot.time_from, time_to: @available_slot.time_to } }
    assert_redirected_to available_slot_url(@available_slot)
  end

  test "should destroy available_slot" do
    assert_difference('AvailableSlot.count', -1) do
      delete available_slot_url(@available_slot)
    end

    assert_redirected_to available_slots_url
  end
end
