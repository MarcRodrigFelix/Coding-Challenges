Rails.application.routes.draw do
  # namespace :api do
  #   resources :trees
  # end

  get "api/tree", to: "api/trees#index"
  get "api/tree/:id", to: "api/trees#show"
  post "api/tree", to: "api/trees#create"
end
