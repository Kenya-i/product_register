Rails.application.routes.draw do
  root 'products#index'
  resources :products
  # For details on the DSL available within this file, see
end
