Rails.application.routes.draw do
  resources :users

  namespace :api do
    namespace :v1 do
      resources :projects, shallow: true do
        resources :todos
      end
    end
  end

  resources :projects, shallow: true do
    resources :todos
  end

  root to: 'projects#index'
end
