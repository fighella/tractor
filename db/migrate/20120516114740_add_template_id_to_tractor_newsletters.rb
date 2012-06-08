class AddTemplateIdToTractorNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters, :template_id, :integer 
  
  end
end
