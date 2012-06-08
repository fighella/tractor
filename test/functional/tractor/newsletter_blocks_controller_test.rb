require 'test_helper'

module Tractor
  class NewsletterBlocksControllerTest < ActionController::TestCase
    setup do
      @newsletter_block = newsletter_blocks(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:newsletter_blocks)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create newsletter_block" do
      assert_difference('NewsletterBlock.count') do
        post :create, newsletter_block: { anchor_text: @newsletter_block.anchor_text, block_key: @newsletter_block.block_key, body: @newsletter_block.body, main_image: @newsletter_block.main_image, main_link: @newsletter_block.main_link, main_title: @newsletter_block.main_title, newsletter_id: @newsletter_block.newsletter_id, secondary_title: @newsletter_block.secondary_title, sort_order: @newsletter_block.sort_order, status: @newsletter_block.status }
      end
  
      assert_redirected_to newsletter_block_path(assigns(:newsletter_block))
    end
  
    test "should show newsletter_block" do
      get :show, id: @newsletter_block
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @newsletter_block
      assert_response :success
    end
  
    test "should update newsletter_block" do
      put :update, id: @newsletter_block, newsletter_block: { anchor_text: @newsletter_block.anchor_text, block_key: @newsletter_block.block_key, body: @newsletter_block.body, main_image: @newsletter_block.main_image, main_link: @newsletter_block.main_link, main_title: @newsletter_block.main_title, newsletter_id: @newsletter_block.newsletter_id, secondary_title: @newsletter_block.secondary_title, sort_order: @newsletter_block.sort_order, status: @newsletter_block.status }
      assert_redirected_to newsletter_block_path(assigns(:newsletter_block))
    end
  
    test "should destroy newsletter_block" do
      assert_difference('NewsletterBlock.count', -1) do
        delete :destroy, id: @newsletter_block
      end
  
      assert_redirected_to newsletter_blocks_path
    end
  end
end
