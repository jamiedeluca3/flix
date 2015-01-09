Rails.application.routes.draw do

	resource :session
	get "signup" => "users#new"
	get "sign-in" => "sessions#new"
  resources :users

  root "movies#index"
  resources :movies do
    resources :reviews
	  resources :favorites
  end
end
