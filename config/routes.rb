CellarMasterEmails::Application.routes.draw do
  devise_for :users

  get "home/index"

  root :to => 'home#index'

  mount Tractor::Engine => '/emarketing', :as => 'tractor' 
##mount Sigs::Engine => '/signatures', :as => 'sigs' 

end
