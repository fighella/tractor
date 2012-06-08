require 'test_helper'

module Tractor
  class NewsletterTestEmailsControllerTest < ActionController::TestCase
    setup do
      @newsletter_test_email = newsletter_test_emails(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:newsletter_test_emails)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create newsletter_test_email" do
      assert_difference('NewsletterTestEmail.count') do
        post :create, newsletter_test_email: { newsletter_id: @newsletter_test_email.newsletter_id, send_to: @newsletter_test_email.send_to }
      end
  
      assert_redirected_to newsletter_test_email_path(assigns(:newsletter_test_email))
    end
  
    test "should show newsletter_test_email" do
      get :show, id: @newsletter_test_email
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @newsletter_test_email
      assert_response :success
    end
  
    test "should update newsletter_test_email" do
      put :update, id: @newsletter_test_email, newsletter_test_email: { newsletter_id: @newsletter_test_email.newsletter_id, send_to: @newsletter_test_email.send_to }
      assert_redirected_to newsletter_test_email_path(assigns(:newsletter_test_email))
    end
  
    test "should destroy newsletter_test_email" do
      assert_difference('NewsletterTestEmail.count', -1) do
        delete :destroy, id: @newsletter_test_email
      end
  
      assert_redirected_to newsletter_test_emails_path
    end
  end
end
