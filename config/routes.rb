#Rails.application.routes.draw do
#get "/all_products", controller: "products", action: "all_products"
#resources :products, defaults: { format: :json }

#get "/product/:id" => "products#one_product"
#end
Rails.application.routes.draw do
  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
