module Tractor
  class Template < ActiveRecord::Base
    attr_accessible :modules, :title, :is_liquid, :liquid_markup
    has_many :newsletter
  end
end
