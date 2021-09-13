Rails.application.routes.draw do
  resources :photography_jobs
  devise_for :users
  resources :users do
    resources :profile, only: %i[show create update]
  end 
  root to: "home#index"
end
