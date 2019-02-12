Rails.application.routes.draw do
	root 'articles#index'
	get 'about' => 'pages#about'

	resources :articles do
		resources :comments
	end
end