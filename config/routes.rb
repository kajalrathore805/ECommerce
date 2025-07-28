Rails.application.routes.draw do
  root "users#index"
get '/login', to: 'session#new'   
  post '/login', to: 'session#create'
 resources :users
 
end
