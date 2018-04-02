Rails.application.routes.draw do
  resources :contracts
  resources :farms
  resources :agronomists
  resources :growers
  resources :fields
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
