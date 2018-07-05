class CampaignTargetPage < ApplicationRecord
  belongs_to :campaign
  belongs_to :target_page
end
