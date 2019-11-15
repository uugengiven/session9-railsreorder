Rails.application.routes.draw do
  resources :cards
  get "trello" => "trello#show"
  root "trello#show"
  post "create" => "trello#save"
  get "reorder" => "trello#reorder"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
