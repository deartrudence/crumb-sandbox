require 'test_helper'

class CampaignTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_template = campaign_templates(:one)
  end

  test "should get index" do
    get campaign_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_template_url
    assert_response :success
  end

  test "should create campaign_template" do
    assert_difference('CampaignTemplate.count') do
      post campaign_templates_url, params: { campaign_template: { campaign_id: @campaign_template.campaign_id, template_id: @campaign_template.template_id } }
    end

    assert_redirected_to campaign_template_url(CampaignTemplate.last)
  end

  test "should show campaign_template" do
    get campaign_template_url(@campaign_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_template_url(@campaign_template)
    assert_response :success
  end

  test "should update campaign_template" do
    patch campaign_template_url(@campaign_template), params: { campaign_template: { campaign_id: @campaign_template.campaign_id, template_id: @campaign_template.template_id } }
    assert_redirected_to campaign_template_url(@campaign_template)
  end

  test "should destroy campaign_template" do
    assert_difference('CampaignTemplate.count', -1) do
      delete campaign_template_url(@campaign_template)
    end

    assert_redirected_to campaign_templates_url
  end
end
