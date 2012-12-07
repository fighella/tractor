# This migration comes from tractor (originally 20120723025854)
class AddTemplateIdToNewsletters < ActiveRecord::Migration
  def change
    add_column :tractor_newsletters, :template_id, :integer
  end
end
