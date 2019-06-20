Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'

  resources :articles

  root to: redirect('/events')

  get 'events', to: 'site#index'
  get 'events/new', to: 'site#index'
  get 'events/:id', to: 'site#index'
  get 'events/:id/edit', to: 'site#index'

  # API routes
  namespace :api do
    resources :events, only: %i[index show create destroy update]
  end
end
