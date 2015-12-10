Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "pages#home"

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
    # resources :profile, only: [:show], controller: "profile"
    get 'profile'
  end
  namespace :account do

    resources :exchanges, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resource :bookings, only: [:new, :create]
    end

    resource :profile, only: [:show, :edit, :update], controller: "profile"
    resource :dashboard, only: :show, controller: "dashboard"
  end

end
