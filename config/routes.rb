Rails.application.routes.draw do
  # root to: 'tasks#index'
  # resources :tasks, only: [:index, :create]

  root to: 'tasks#index'  
  post 'tasks', to: 'tasks#create'
end
