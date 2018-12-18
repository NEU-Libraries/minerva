require 'test_helper'

module Minerva
  class WorkflowsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @workflow = minerva_workflows(:one)
    end

    test "should get index" do
      get workflows_url
      assert_response :success
    end

    test "should get new" do
      get new_workflow_url
      assert_response :success
    end

    test "should create workflow" do
      assert_difference('Workflow.count') do
        post workflows_url, params: { workflow: { creator_id: @workflow.creator_id, ordered: @workflow.ordered, project_id: @workflow.project_id, task_list: @workflow.task_list, title: @workflow.title } }
      end

      assert_redirected_to workflow_url(Workflow.last)
    end

    test "should show workflow" do
      get workflow_url(@workflow)
      assert_response :success
    end

    test "should get edit" do
      get edit_workflow_url(@workflow)
      assert_response :success
    end

    test "should update workflow" do
      patch workflow_url(@workflow), params: { workflow: { creator_id: @workflow.creator_id, ordered: @workflow.ordered, project_id: @workflow.project_id, task_list: @workflow.task_list, title: @workflow.title } }
      assert_redirected_to workflow_url(@workflow)
    end

    test "should destroy workflow" do
      assert_difference('Workflow.count', -1) do
        delete workflow_url(@workflow)
      end

      assert_redirected_to workflows_url
    end
  end
end
