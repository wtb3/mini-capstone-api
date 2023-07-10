#Rails.application.routes.draw do
#get "/all_products", controller: "products", action: "all_products"
#resources :products, defaults: { format: :json }

#get "/product/:id" => "products#one_product"
#end
Rails.application.routes.draw do
  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#post"
  patch "/products/:id" => "products#patch"
  delete "/products/:id" => "products#destroy"
end
