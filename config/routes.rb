Rails.application.routes.draw do
  get 'admins/index'
  resources :employees
  resources :address
  resources :admins

  root 'home#index'
end
