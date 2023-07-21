Rails.application.routes.draw do
  # Devise routes for User authentication
  devise_for :users

  # Products
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  # Suppliers
  get "/suppliers/:id" => "suppliers#index"

  # Users
  post "/users" => "users#create"

  # Sessions
  post "/sessions" => "sessions#create"

  # Orders
  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

  # Carted Products
  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" => "carted_products#destroy"
end
