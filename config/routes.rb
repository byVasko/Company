Rails.application.routes.draw do
	root 'pages#index'
	get 'about' => 'pages#about'

	resources :articles do
		resources :comments
	end
end