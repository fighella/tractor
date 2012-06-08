module Tractor
  class Template < ActiveRecord::Base
    attr_accessible :modules, :title
    has_many :newsletter
  end
end
