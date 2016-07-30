Rails.application.routes.draw do
  resources :heros 

  resources :messages do
	get :clear, on: :collection
  end

  root to: 'rooms#show'
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
