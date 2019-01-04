require 'test_helper'

module Minerva
  class StatesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @state = minerva_states(:one)
      @creator = minerva_users(:one)
      @user = minerva_users(:two)
      @role = minerva_roles(:one)
      @work = minerva_works(:one)
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
        post states_url, params: { state: { assignment_id: @state.assignment_id, creator_id: @creator.id, role_id: @role.id, status_id: @state.status_id, user_id: @user.id, work_id: @work.id } }
      end

      assert_redirected_to state_url(State.last)
    end

    test "should show state" do
      get state_url(@state)
      assert_response :success
    end
  end
end
