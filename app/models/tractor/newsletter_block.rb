module Tractor
  class NewsletterBlock < ActiveRecord::Base
    attr_accessible :anchor_text, :block_key, :body, :main_image, :main_link, :main_title, :newsletter_id, :secondary_title, :sort_order, :status, :remove_main_image
    belongs_to :newsletter
    has_one :template
    acts_as_list
    mount_uploader :main_image, ImageUploader

      
    def sort
  params[:newsletter_block].each_with_index do |id, index|
    NewsletterBlock.update_all({position: index+1}, {id: id})
  end
  render nothing: true
end

  end
end
