module Tractor
  class NewsletterTestEmail < ActiveRecord::Base
    attr_accessible :newsletter_id, :send_to
    belongs_to :newsletter
    
    
    after_create do
      send_test_email(self)
    end

    def send_test_email(news)
      @newsletter = news.newsletter
      NewsletterTest.test_email(@newsletter, news.send_to).deliver 
    end

  end
end
