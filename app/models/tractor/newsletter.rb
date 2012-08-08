module Tractor
  class Newsletter < ActiveRecord::Base
    attr_accessible :content, :preheader, :sections, :status, :subject_line, :title, :tracking_code, :template_id, :newsletter_blocks_attributes
    ## Associations
    has_many :newsletter_blocks, :order => 'sort_order'
    has_many :newsletter_test_emails
    has_one :send_event
    belongs_to :template

    ## Validations
    validates_presence_of :template_id, :title
    validates_uniqueness_of :title

    ## Nested Attributes
    accepts_nested_attributes_for :newsletter_blocks, allow_destroy: true
    #accepts_nested_attributes_for :main_image, allow_destroy: true

    liquid_methods :title, :newsletter_blocks_for_liquid

    def newsletter_blocks_for_liquid
      NewsletterBlock.order('sort_order ASC')
    end


    def send_test
      @newsletter = self
      NewsletterTest.test_email(@newsletter).deliver
    end



    ## Once a template is chosen on creation of an email, add the right amount
    #og newsletter blocks to the template.
    after_create do
      if self.template_id != 0
        i = 1
        self.template.modules.times do
          NewsletterBlock.create(:newsletter_id => self.id, :block_key => rand(36**8).to_s(36), :sort_order => i)
          i = i + 1
        end
      end
    end
  end
end
