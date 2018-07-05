class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.references :campaign, foreign_key: true
      t.string :template_name

      t.timestamps
    end
  end
end
