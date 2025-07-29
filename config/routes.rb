Rails.application.routes.draw do
 # root "users#index"
 resources :users , :session , :stores , :addresses , :products ,:product_variations ,:product_skus
end
