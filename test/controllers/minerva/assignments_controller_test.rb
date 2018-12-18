require 'test_helper'

module Minerva
  class AssignmentsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @assignment = minerva_assignments(:one)
    end

    test "should get index" do
      get assignments_url
      assert_response :success
    end

    test "should get new" do
      get new_assignment_url
      assert_response :success
    end

    test "should create assignment" do
      assert_difference('Assignment.count') do
        post assignments_url, params: { assignment: { automated: @assignment.automated, interface_id: @assignment.interface_id, title: @assignment.title } }
      end

      assert_redirected_to assignment_url(Assignment.last)
    end

    test "should show assignment" do
      get assignment_url(@assignment)
      assert_response :success
    end

    test "should get edit" do
      get edit_assignment_url(@assignment)
      assert_response :success
    end

    test "should update assignment" do
      patch assignment_url(@assignment), params: { assignment: { automated: @assignment.automated, interface_id: @assignment.interface_id, title: @assignment.title } }
      assert_redirected_to assignment_url(@assignment)
    end

    test "should destroy assignment" do
      assert_difference('Assignment.count', -1) do
        delete assignment_url(@assignment)
      end

      assert_redirected_to assignments_url
    end
  end
end
