# This migration comes from tractor (originally 20120514232854)
class CreateTractorCampaigns < ActiveRecord::Migration
  def change
    create_table :tractor_campaigns do |t|
      t.string :title
      t.string :campaign_key

      t.timestamps
    end
  end
end
