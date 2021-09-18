Rails.application.routes.draw do
  root to: "home#index"
  resources :photography_jobs
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  resources :users do
    resources :profiles
  end 
end
