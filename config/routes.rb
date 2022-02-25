Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :fairies, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :fairies, only: [:new, :create, :edit]

  resources :bookings, only: [:show] do
    collection do
      get :dashboard
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
