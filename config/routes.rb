Site::Application.routes.draw do
  scope '/admin' do
  	resources :events
	end

  get "home/index"

  root to: "home#index"

  match 'auth/github/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
