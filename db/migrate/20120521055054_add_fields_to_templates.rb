class AddFieldsToTemplates < ActiveRecord::Migration
  def change
    add_column :tractor_templates, :thumbnail, :string
    add_column :tractor_templates, :asset_path, :string
    add_column :tractor_templates, :client_id, :string
  end
end
