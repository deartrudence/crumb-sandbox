require 'test_helper'

class TargetPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @target_page = target_pages(:one)
  end

  test "should get index" do
    get target_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_target_page_url
    assert_response :success
  end

  test "should create target_page" do
    assert_difference('TargetPage.count') do
      post target_pages_url, params: { target_page: { campaign_id: @target_page.campaign_id, target_page_name: @target_page.target_page_name } }
    end

    assert_redirected_to target_page_url(TargetPage.last)
  end

  test "should show target_page" do
    get target_page_url(@target_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_target_page_url(@target_page)
    assert_response :success
  end

  test "should update target_page" do
    patch target_page_url(@target_page), params: { target_page: { campaign_id: @target_page.campaign_id, target_page_name: @target_page.target_page_name } }
    assert_redirected_to target_page_url(@target_page)
  end

  test "should destroy target_page" do
    assert_difference('TargetPage.count', -1) do
      delete target_page_url(@target_page)
    end

    assert_redirected_to target_pages_url
  end
end
