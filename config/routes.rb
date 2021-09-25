Rails.application.routes.draw do
  root to: "home#index"
  resources :photography_jobs
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  
  resources :profiles, only: %i[edit update show]
end
