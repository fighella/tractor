module Tractor
  class SendEvent < ActiveRecord::Base
    attr_accessible :name, :newsletter_id, :send_date
    belongs_to :newsletter
  end
end
