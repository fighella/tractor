# This migration comes from tractor (originally 20120516113304)
class CreateTractorNewsletters < ActiveRecord::Migration
  def change
    create_table :tractor_newsletters do |t|
      t.string :title
      t.text :content
      t.string :tracking_code
      t.string :subject_line
      t.integer :status
      t.string :preheader
      t.integer :sections

      t.timestamps
    end
  end
end
