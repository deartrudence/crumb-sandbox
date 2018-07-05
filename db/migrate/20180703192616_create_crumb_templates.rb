class CreateCrumbTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :crumb_templates do |t|
      t.string :name

      t.timestamps
    end
  end
end
