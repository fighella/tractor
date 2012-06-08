class AddPositionToNewsletterBlocks < ActiveRecord::Migration
  def change
    add_column :tractor_newsletter_blocks, :position, :integer
  end
end
