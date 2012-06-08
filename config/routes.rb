Tractor::Engine.routes.draw do
  resources :newsletter_test_emails

  get "dashboard/index"

  resources :templates

  resources :newsletter_blocks
  
  match "/newsletters/send_test_email/(:id)" => 'newsletters#send_test_email'
  
  resources :newsletters
  
  resources :newsletter_blocks do
    collection { post :sort }
  end
  
  resources :send_events

  resources :campaigns
  
  root :to => "dashboard#index"

end
