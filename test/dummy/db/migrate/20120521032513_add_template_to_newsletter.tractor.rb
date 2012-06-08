# This migration comes from tractor (originally 20120516234113)
class AddTemplateToNewsletter < ActiveRecord::Migration
  def change
    add_column :tractor_newsletters, :template_id, :integer 
  end
end
