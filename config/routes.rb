Rails.application.routes.draw do
  devise_for :users
	root 'pages#index'
	get 'about' => 'pages#about'
	get 'smart' => 'pages#smart'

	resources :tags, only: [:show]
	resources :smartphones
	resources :articles do
		resources :comments
	end
end