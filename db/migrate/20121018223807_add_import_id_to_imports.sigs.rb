# This migration comes from sigs (originally 20120531100943)
class AddImportIdToImports < ActiveRecord::Migration
  def change
    add_column :sigs_staff_members, :import_id, :integer
  end
end
