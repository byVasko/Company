Rails.application.routes.draw do
	root 'pages#index'
	get 'about' => 'pages#about'
	get 'smart' => 'pages#smart'

	resources :tags, only: [:show]
	resources :smartphones
	resources :articles do
		resources :comments
	end
end