# This migration comes from sigs (originally 20120531053839)
class CreateSigsImports < ActiveRecord::Migration
  def change
    create_table :sigs_imports do |t|
      t.string :file
      t.integer :status
      t.integer :default_template
      t.integer :client_id
      t.timestamps
    end
  end
end
