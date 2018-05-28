Rails.application.routes.draw do
	resources :users
	resources :posts 
 	
 	get		'login'   => 'sessions#new'
	post    'login'     => 'sessions#create'
  delete  'logout' => 'sessions#destroy'
  # match '*path', via: [:options], to:  lambda {|_| [204, {'Content-Type' => 'text/plain'}, []]}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
