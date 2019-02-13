Rails.application.routes.draw do
	root 'pages#index'
	get 'about' => 'pages#about'

	resources :tags, only: [:show]
	resources :articles do
		resources :comments
	end
end