Rails.application.routes.draw do
  root 'projects#index', as: :root_url
  
  resources :todos, only: [:create, :update]
end
