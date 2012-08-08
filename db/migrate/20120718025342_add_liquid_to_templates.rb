class AddLiquidToTemplates < ActiveRecord::Migration
  def change
    add_column :tractor_templates, :liquid_markup, :text
    add_column :tractor_templates, :is_liquid, :boolean
  end
end
