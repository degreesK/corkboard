Rails.application.routes.draw do
  resources :corks

  root "corks#index"
end
