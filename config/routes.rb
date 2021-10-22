Rails.application.routes.draw do
  resources :pending_applications
  resources :photography_jobs do 
    resources :job_applications
  end
  resources :job_applications
  root to: "home#index"
  resources :photography_jobs
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  
  resources :profiles, only: %i[edit update show]
end
