Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:index, :show, :update]
      resources :cars, only: [:index, :show, :create, :update, :destroy]
      resources :trips, only: [:index, :show, :create, :update, :destroy]
      resources :sections, only: [:index, :show, :create, :update, :destroy]
      resources :cities, only: [:index, :show, :create, :update, :destroy]
      resources :passengers, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
