require "application_system_test_case"

module Minerva
  class StatesTest < ApplicationSystemTestCase
    setup do
      @state = minerva_states(:one)
    end

    test "visiting the index" do
      visit minerva.states_url
      assert_selector "h1", text: "States"
    end

    test "creating a State" do
      visit minerva.states_url
      click_on "New State"

      fill_in "Assignment", with: @state.assignment_id
      fill_in "Creator", with: @state.creator_id
      fill_in "Role", with: @state.role_id
      fill_in "Status", with: @state.status_id
      fill_in "User", with: @state.user_id
      fill_in "Work", with: @state.work_id
      click_on "Create State"

      assert_text "State was successfully created"
      click_on "Back"
    end
  end
end
