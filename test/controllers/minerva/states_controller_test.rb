require 'test_helper'

module Minerva
  class StatesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @state = minerva_states(:one)
    end

    test "should get index" do
      get states_url
      assert_response :success
    end

    test "should get new" do
      get new_state_url
      assert_response :success
    end

    test "should create state" do
      assert_difference('State.count') do
        post states_url, params: { state: { assignment_id: @state.assignment_id, creator_id: @state.creator_id, role_id: @state.role_id, status_id: @state.status_id, user_id: @state.user_id, work_id: @state.work_id } }
      end

      assert_redirected_to state_url(State.last)
    end

    test "should show state" do
      get state_url(@state)
      assert_response :success
    end

    test "should get edit" do
      get edit_state_url(@state)
      assert_response :success
    end

    test "should not update state" do
      assert_raise ActiveRecord::ReadOnlyRecord do
        patch state_url(@state), params: { state: { assignment_id: @state.assignment_id, creator_id: @state.creator_id, role_id: @state.role_id, status_id: @state.status_id, user_id: @state.user_id, work_id: @state.work_id } }
      end
    end

    test "should not destroy state" do
      assert_raise ActiveRecord::ReadOnlyRecord do
        delete state_url(@state)
      end
    end
  end
end
