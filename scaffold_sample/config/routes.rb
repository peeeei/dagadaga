Rails.application.routes.draw do
  get 'rooms/show'
  get   'sign_up' => 'sessions#new'
  get    'login'   => 'sessions#home'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  root 'users#index'
  resources :users

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
