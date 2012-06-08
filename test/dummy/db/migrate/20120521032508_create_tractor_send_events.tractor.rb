# This migration comes from tractor (originally 20120516113024)
class CreateTractorSendEvents < ActiveRecord::Migration
  def change
    create_table :tractor_send_events do |t|
      t.string :name
      t.datetime :send_date
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
