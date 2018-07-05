class CampaignTask < ApplicationRecord
  belongs_to :campaign
  belongs_to :task
end
