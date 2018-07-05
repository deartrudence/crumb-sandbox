require 'test_helper'

class CampaignTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_task = campaign_tasks(:one)
  end

  test "should get index" do
    get campaign_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_task_url
    assert_response :success
  end

  test "should create campaign_task" do
    assert_difference('CampaignTask.count') do
      post campaign_tasks_url, params: { campaign_task: { amount: @campaign_task.amount, campaign_id: @campaign_task.campaign_id, incentive_type: @campaign_task.incentive_type, task_id: @campaign_task.task_id } }
    end

    assert_redirected_to campaign_task_url(CampaignTask.last)
  end

  test "should show campaign_task" do
    get campaign_task_url(@campaign_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_task_url(@campaign_task)
    assert_response :success
  end

  test "should update campaign_task" do
    patch campaign_task_url(@campaign_task), params: { campaign_task: { amount: @campaign_task.amount, campaign_id: @campaign_task.campaign_id, incentive_type: @campaign_task.incentive_type, task_id: @campaign_task.task_id } }
    assert_redirected_to campaign_task_url(@campaign_task)
  end

  test "should destroy campaign_task" do
    assert_difference('CampaignTask.count', -1) do
      delete campaign_task_url(@campaign_task)
    end

    assert_redirected_to campaign_tasks_url
  end
end
