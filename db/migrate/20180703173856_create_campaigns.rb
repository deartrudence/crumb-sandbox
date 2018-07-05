class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.references :user, foreign_key: true
      t.string :compaign_name

      t.timestamps
    end
  end
end
