Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "dogs" => "dogs#index"
  get "dogs/:id" => "dogs#show"
  get "dogs" => "dogs#create"
  get "dogs/:id" => "dogs#update"
  get "dogs/:id" => "dogs#destroy"
  
end
