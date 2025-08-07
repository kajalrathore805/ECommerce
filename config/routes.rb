Rails.application.routes.draw do
  root "home#index"
 resources  :home , :users , :session , :stores , :addresses , :products ,
 						:product_variations ,:product_skus , :cart_items
 resources 	:orders, only: [:new, :create, :show] do
  resources :order_items, only: [:index, :show]
end			
end
