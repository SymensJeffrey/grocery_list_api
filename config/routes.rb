Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Items
  get "/items" => "items#index"
  # Lists
  get "/lists" => "lists#index"


end
