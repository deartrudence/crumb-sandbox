class AddCrumbTemplateIdToCampaignTemplate < ActiveRecord::Migration[5.1]
  def change
    add_reference :campaign_templates, :crumb_template, foreign_key: true
  end
end
