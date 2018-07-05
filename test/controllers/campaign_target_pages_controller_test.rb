require 'test_helper'

class CampaignTargetPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_target_page = campaign_target_pages(:one)
  end

  test "should get index" do
    get campaign_target_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_target_page_url
    assert_response :success
  end

  test "should create campaign_target_page" do
    assert_difference('CampaignTargetPage.count') do
      post campaign_target_pages_url, params: { campaign_target_page: { campaign_id: @campaign_target_page.campaign_id, target_page_id: @campaign_target_page.target_page_id } }
    end

    assert_redirected_to campaign_target_page_url(CampaignTargetPage.last)
  end

  test "should show campaign_target_page" do
    get campaign_target_page_url(@campaign_target_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_target_page_url(@campaign_target_page)
    assert_response :success
  end

  test "should update campaign_target_page" do
    patch campaign_target_page_url(@campaign_target_page), params: { campaign_target_page: { campaign_id: @campaign_target_page.campaign_id, target_page_id: @campaign_target_page.target_page_id } }
    assert_redirected_to campaign_target_page_url(@campaign_target_page)
  end

  test "should destroy campaign_target_page" do
    assert_difference('CampaignTargetPage.count', -1) do
      delete campaign_target_page_url(@campaign_target_page)
    end

    assert_redirected_to campaign_target_pages_url
  end
end
