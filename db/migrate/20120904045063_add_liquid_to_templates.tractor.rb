# This migration comes from tractor (originally 20120718025342)
class AddLiquidToTemplates < ActiveRecord::Migration
  def change
    add_column :tractor_templates, :liquid_markup, :text
    add_column :tractor_templates, :is_liquid, :boolean
  end
end
