require "application_system_test_case"

module Minerva
  class WorkflowsTest < ApplicationSystemTestCase
    setup do
      @workflow = minerva_workflows(:one)
    end

    test "visiting the index" do
      visit workflows_url
      assert_selector "h1", text: "Workflows"
    end

    test "creating a Workflow" do
      visit workflows_url
      click_on "New Workflow"

      fill_in "Creator", with: @workflow.creator_id
      fill_in "Ordered", with: @workflow.ordered
      fill_in "Project", with: @workflow.project_id
      fill_in "Task list", with: @workflow.task_list
      fill_in "Title", with: @workflow.title
      click_on "Create Workflow"

      assert_text "Workflow was successfully created"
      click_on "Back"
    end

    test "updating a Workflow" do
      visit workflows_url
      click_on "Edit", match: :first

      fill_in "Creator", with: @workflow.creator_id
      fill_in "Ordered", with: @workflow.ordered
      fill_in "Project", with: @workflow.project_id
      fill_in "Task list", with: @workflow.task_list
      fill_in "Title", with: @workflow.title
      click_on "Update Workflow"

      assert_text "Workflow was successfully updated"
      click_on "Back"
    end

    test "destroying a Workflow" do
      visit workflows_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Workflow was successfully destroyed"
    end
  end
end
