class CreateCampaignTargetPages < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_target_pages do |t|
      t.references :campaign, foreign_key: true
      t.references :target_page, foreign_key: true

      t.timestamps
    end
  end
end
