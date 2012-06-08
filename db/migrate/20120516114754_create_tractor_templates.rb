class CreateTractorTemplates < ActiveRecord::Migration
  def change
    create_table :tractor_templates do |t|
      t.string :title
      t.integer :modules

      t.timestamps
    end
  end
end
