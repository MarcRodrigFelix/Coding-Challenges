Rails.application.routes.draw do
  namespace :api do
    resources :trees
  end
end
