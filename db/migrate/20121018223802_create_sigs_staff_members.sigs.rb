# This migration comes from sigs (originally 20120514232952)
class CreateSigsStaffMembers < ActiveRecord::Migration
  def change
    create_table :sigs_staff_members do |t|
      t.string :title
      t.string :name

      t.timestamps
    end
  end
end
