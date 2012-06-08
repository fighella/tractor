module Tractor
  
  
  
  class Engine < ::Rails::Engine
    isolate_namespace Tractor

   require 'rubygems'
    require 'simple_form'
    require 'nested_form'
    require 'carrierwave'
    require 'jquery-rails'
                             
  end
end
