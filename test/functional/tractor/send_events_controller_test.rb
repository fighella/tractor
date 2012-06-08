require 'test_helper'

module Tractor
  class SendEventsControllerTest < ActionController::TestCase
    setup do
      @send_event = send_events(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:send_events)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create send_event" do
      assert_difference('SendEvent.count') do
        post :create, send_event: { name: @send_event.name, newsletter_id: @send_event.newsletter_id, send_date: @send_event.send_date }
      end
  
      assert_redirected_to send_event_path(assigns(:send_event))
    end
  
    test "should show send_event" do
      get :show, id: @send_event
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @send_event
      assert_response :success
    end
  
    test "should update send_event" do
      put :update, id: @send_event, send_event: { name: @send_event.name, newsletter_id: @send_event.newsletter_id, send_date: @send_event.send_date }
      assert_redirected_to send_event_path(assigns(:send_event))
    end
  
    test "should destroy send_event" do
      assert_difference('SendEvent.count', -1) do
        delete :destroy, id: @send_event
      end
  
      assert_redirected_to send_events_path
    end
  end
end
