class Campaign < ApplicationRecord
  belongs_to :user
  has_many :campaign_colors
  has_many :campaign_tasks
  has_many :campaign_templates
  has_many :campaign_target_pagees
end
