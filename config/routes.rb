Rails.application.routes.draw do
 # root "users#index"
 resources :users
 resources :session
 resources :stores
 resources :addresses
end
