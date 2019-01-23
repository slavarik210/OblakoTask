Rails.application.routes.draw do
  root 'projects#index'
  resources :todos do
		collection do
			get :all
		end
	end
	resources :projects do
		collection do
			get :all
		end
	end
end
