Rails.application.routes.draw do
  resources :photographers
  resources :profiles
  devise_for :users
  root to: "home#index"
end
