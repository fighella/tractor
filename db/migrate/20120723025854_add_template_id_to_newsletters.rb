class AddTemplateIdToNewsletters < ActiveRecord::Migration
  def change
    add_column :tractor_newsletters, :template_id, :integer
  end
end
