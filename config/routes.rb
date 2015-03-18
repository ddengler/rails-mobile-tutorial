Rails.application.routes.draw do
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

  root to: 'todos#index'
end
