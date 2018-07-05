class CreateCampaignTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_templates do |t|
      t.references :campaign, foreign_key: true
      t.references :template, foreign_key: true

      t.timestamps
    end
  end
end
