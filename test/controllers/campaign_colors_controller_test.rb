require 'test_helper'

class CampaignColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_color = campaign_colors(:one)
  end

  test "should get index" do
    get campaign_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_color_url
    assert_response :success
  end

  test "should create campaign_color" do
    assert_difference('CampaignColor.count') do
      post campaign_colors_url, params: { campaign_color: { campaign_id: @campaign_color.campaign_id, color_type: @campaign_color.color_type, hex_value: @campaign_color.hex_value } }
    end

    assert_redirected_to campaign_color_url(CampaignColor.last)
  end

  test "should show campaign_color" do
    get campaign_color_url(@campaign_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_color_url(@campaign_color)
    assert_response :success
  end

  test "should update campaign_color" do
    patch campaign_color_url(@campaign_color), params: { campaign_color: { campaign_id: @campaign_color.campaign_id, color_type: @campaign_color.color_type, hex_value: @campaign_color.hex_value } }
    assert_redirected_to campaign_color_url(@campaign_color)
  end

  test "should destroy campaign_color" do
    assert_difference('CampaignColor.count', -1) do
      delete campaign_color_url(@campaign_color)
    end

    assert_redirected_to campaign_colors_url
  end
end
