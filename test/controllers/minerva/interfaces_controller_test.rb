require 'test_helper'

module Minerva
  class InterfacesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @interface = minerva_interfaces(:one)
    end

    test "should get index" do
      get interfaces_url
      assert_response :success
    end

    test "should get new" do
      get new_interface_url
      assert_response :success
    end

    test "should create interface" do
      assert_difference('Interface.count') do
        post interfaces_url, params: { interface: { code_point: @interface.code_point, title: @interface.title } }
      end

      assert_redirected_to interface_url(Interface.last)
    end

    test "should show interface" do
      get interface_url(@interface)
      assert_response :success
    end

    test "should get edit" do
      get edit_interface_url(@interface)
      assert_response :success
    end

    test "should update interface" do
      patch interface_url(@interface), params: { interface: { code_point: @interface.code_point, title: @interface.title } }
      assert_redirected_to interface_url(@interface)
    end

    test "should destroy interface" do
      assert_difference('Interface.count', -1) do
        delete interface_url(@interface)
      end

      assert_redirected_to interfaces_url
    end
  end
end
