# This migration comes from sigs (originally 20120515033930)
class CreateSigsEmailTemplates < ActiveRecord::Migration
  def change
    create_table :sigs_email_templates do |t|
      t.string :title
      t.string :template_key
      t.integer :status

      t.timestamps
    end
  end
end
