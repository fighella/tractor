CellarMasterEmails::Application.routes.draw do
  require 'tractor'
  devise_for :users

  get "home/index"

  root :to => 'home#index'
  
  mount Tractor::Engine, :at => '/emarketing', :as => 'tractor' 
##mount Sigs::Engine => '/signatures', :as => 'sigs' 

end
