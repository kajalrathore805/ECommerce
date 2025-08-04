Rails.application.routes.draw do
  root "home#index"
 resources  :home , :users , :session , :stores , :addresses , :products ,:product_variations ,:product_skus,
 			:order_items , :cart_items
end
