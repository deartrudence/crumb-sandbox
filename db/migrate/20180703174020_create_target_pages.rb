class CreateTargetPages < ActiveRecord::Migration[5.1]
  def change
    create_table :target_pages do |t|
      t.references :campaign, foreign_key: true
      t.string :target_page_name

      t.timestamps
    end
  end
end
