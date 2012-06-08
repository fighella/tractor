module Tractor
  class Campaign < ActiveRecord::Base
    attr_accessible :campaign_key, :title
    has_many :newsletters
  end
end
