# This migration comes from tractor (originally 20120824034043)
class AddOtherBlockToNewsletterBlocks < ActiveRecord::Migration
  def change
    add_column :tractor_newsletter_blocks, :other_block_id, :integer
  end
end
