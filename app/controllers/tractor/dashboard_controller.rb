module Tractor
  class DashboardController < ApplicationController
    def index
    
    @newsletters = Newsletter.all
    
    end
  end
end
