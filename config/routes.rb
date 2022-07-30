Rails.application.routes.draw do
  get 'admins/index'
  resources :employees
  resources :address
  resource :admins do
    post :confirm_destroy
  end

  root 'home#index'
end
