Rails.application.routes.draw do

  mount Tractor::Engine => "/tractor"

  root :to => "tractor/dashboard#index"

end
