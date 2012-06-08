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
