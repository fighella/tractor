# This migration comes from sigs (originally 20120601121159)
class AddTemplateIdToImports < ActiveRecord::Migration
  def change
    add_column :sigs_imports, :email_template_id, :integer
  end
end
