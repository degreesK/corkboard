Rails.application.routes.draw do
  devise_for :users
  resources :corks

  root "corks#index"
end
