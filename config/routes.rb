Rails.application.routes.draw do
root :to => 'users#new'
resources :users
post "oauth/callback" => "oauths#callback"
get "oauth/callback" => "oauths#callback"
get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider


end
