module Tractor
  class DashboardController < Tractor::ApplicationController
    def index
    
    @newsletters = Newsletter.all
    
    end
  end
end
