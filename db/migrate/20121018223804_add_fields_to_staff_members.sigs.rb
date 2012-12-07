# This migration comes from sigs (originally 20120515034213)
class AddFieldsToStaffMembers < ActiveRecord::Migration
  def change
    add_column :sigs_staff_members, :primary_title, :string
    add_column :sigs_staff_members, :secondary_title, :string
    add_column :sigs_staff_members, :email_address, :string
    add_column :sigs_staff_members, :location, :string
    add_column :sigs_staff_members, :primary_phone, :string
    add_column :sigs_staff_members, :secondary_phone, :string
    add_column :sigs_staff_members, :mobile_phone, :string
    add_column :sigs_staff_members, :other_key, :string
    add_column :sigs_staff_members, :status, :integer
    add_column :sigs_staff_members, :fax_number, :string
    add_column :sigs_staff_members, :logo_key, :string
    add_column :sigs_staff_members, :template_id, :integer
  end
end
