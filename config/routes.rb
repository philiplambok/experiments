Rails.application.routes.draw do
  resources :address

  root 'home#index'
end
