class CreateCampaignTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_tasks do |t|
      t.references :campaign, foreign_key: true
      t.references :task, foreign_key: true
      t.string :incentive_type
      t.decimal :amount

      t.timestamps
    end
  end
end
