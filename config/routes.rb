Rails.application.routes.draw do
  root 'projects#index'
  
  resources :todos, only: [:create, :update]
end
