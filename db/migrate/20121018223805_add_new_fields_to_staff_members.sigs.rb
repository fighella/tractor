# This migration comes from sigs (originally 20120530234026)
class AddNewFieldsToStaffMembers < ActiveRecord::Migration
  def change
    add_column :sigs_staff_members, :email_template_id, :integer
    remove_column :sigs_staff_members, :template_id
  
  
  
  end
end
