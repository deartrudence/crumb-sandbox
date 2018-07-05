json.extract! campaign_task, :id, :campaign_id, :task_id, :incentive_type, :amount, :created_at, :updated_at
json.url campaign_task_url(campaign_task, format: :json)
