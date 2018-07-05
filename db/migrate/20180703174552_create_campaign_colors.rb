class CreateCampaignColors < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_colors do |t|
      t.references :campaign, foreign_key: true
      t.string :hex_value
      t.string :color_type

      t.timestamps
    end
  end
end
