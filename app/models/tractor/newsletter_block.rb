module Tractor
  class NewsletterBlock < ActiveRecord::Base
    attr_accessible :anchor_text, :block_key, :body, :main_image, :main_link, :main_title, :newsletter_id, :secondary_title, :sort_order, :status, :remove_main_image, :block_type, :remote_main_image_url, :other_block
    belongs_to :newsletter
    has_one :template

    scope :has_title, where("main_title != ?","")

    ##TODO Figure WTF ==> acts_as_list
    mount_uploader :main_image, ImageUploader
    liquid_methods :main_title, :newsletter, :body, :secondary_title, :block_type, :block_key, :main_link, :main_image_path_helper, :anchor_text, :main_image

    def main_image_path_helper
      image = self.main_image.url
      image
    end

    def remove_main_image?
      if self.remove_main_image == 1
        self.main_image = nil
      end
    end

    def sort
      params[:newsletter_block].each_with_index do |id, index|
        NewsletterBlock.update_all({position: index+1}, {id: id})
      end
      render nothing: true
    end

  end
end
