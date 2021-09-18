Rails.application.routes.draw do
  namespace :admin do
    resources :users, only: %i[index new create show destroy]
  end
end
