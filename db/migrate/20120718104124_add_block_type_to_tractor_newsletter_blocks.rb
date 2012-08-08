class AddBlockTypeToTractorNewsletterBlocks < ActiveRecord::Migration
  def change
    add_column :tractor_newsletter_blocks, :block_type, :integer
  end
end
