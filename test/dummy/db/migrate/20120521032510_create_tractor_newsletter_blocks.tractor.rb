# This migration comes from tractor (originally 20120516113457)
class CreateTractorNewsletterBlocks < ActiveRecord::Migration
  def change
    create_table :tractor_newsletter_blocks do |t|
      t.string :block_key
      t.integer :newsletter_id
      t.integer :sort_order
      t.integer :status
      t.string :main_title
      t.string :secondary_title
      t.string :main_link
      t.string :anchor_text
      t.string :main_image
      t.text :body

      t.timestamps
    end
  end
end
