Rails.application.routes.draw do
  resources :employees
  resources :address

  root 'home#index'
end
