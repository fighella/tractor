# This migration comes from tractor (originally 20120521103044)
class CreateTractorNewsletterTestEmails < ActiveRecord::Migration
  def change
    create_table :tractor_newsletter_test_emails do |t|
      t.string :send_to
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
