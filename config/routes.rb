Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'
  root 'site#index'

  resources :articles

  # API routes
  namespace :api do
    resources :events, only: %i[index show create destroy update]
  end
end
