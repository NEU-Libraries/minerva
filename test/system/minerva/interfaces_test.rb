require "application_system_test_case"

module Minerva
  class InterfacesTest < ApplicationSystemTestCase
    setup do
      @interface = minerva_interfaces(:one)
    end

    test "visiting the index" do
      visit minerva.interfaces_url
      assert_selector "h1", text: "Interfaces"
    end

    test "creating a Interface" do
      visit minerva.interfaces_url
      click_on "New Interface"

      fill_in "Code point", with: @interface.code_point
      fill_in "Title", with: @interface.title
      click_on "Create Interface"

      assert_text "Interface was successfully created"
      click_on "Back"
    end

    test "updating a Interface" do
      visit minerva.interfaces_url
      click_on "Edit", match: :first

      fill_in "Code point", with: @interface.code_point
      fill_in "Title", with: @interface.title
      click_on "Update Interface"

      assert_text "Interface was successfully updated"
      click_on "Back"
    end

    test "destroying a Interface" do
      visit minerva.interfaces_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Interface was successfully destroyed"
    end
  end
end
