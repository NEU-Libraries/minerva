require "application_system_test_case"

module Minerva
  class StatesTest < ApplicationSystemTestCase
    setup do
      @creator = minerva_users(:one)
      @user = minerva_users(:two)
      @role = minerva_roles(:one)
      @work = minerva_works(:one)
      @interface = minerva_interfaces(:one)
    end

    test "visiting the index" do
      visit minerva.states_url
      assert_selector "h1", text: "States"
    end

    test "creating a State" do
      visit minerva.states_url
      click_on "New State"

      fill_in "Creator", with: @creator.id
      fill_in "Role", with: @role.id
      fill_in "Status", with: "Example Status"
      fill_in "User", with: @user.id
      fill_in "Work", with: @work.id
      fill_in "Interface", with: @interface.id
      click_on "Create State"

      assert_text "State was successfully created"
      click_on "Back"
    end
  end
end
