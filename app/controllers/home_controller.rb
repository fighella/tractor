class HomeController < ApplicationController
  def index

    @newsletters = Tractor::Newsletter.all
  end
end
