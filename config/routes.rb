Rails.application.routes.draw do
	resources :users
 
	post    'sessions'     => 'sessions#create'
  delete  'sessions/:id' => 'sessions#destroy'
 match '*path', via: [:options], to:  lambda {|_| [204, {'Content-Type' => 'text/plain'}, []]}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
