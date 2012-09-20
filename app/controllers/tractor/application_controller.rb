# Customized for engine
class Tractor::ApplicationController < ApplicationController 

  layout 'tractor_layout'
  before_filter :authenticate_user!

  include Tractor::ApplicationHelper

end
 

#module Tractor
#  class ApplicationController < ActionController::Base
#    layout 'tractor_layout'
#  end
#end
