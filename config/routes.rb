Rails.application.routes.draw do

    root to: "welcome#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end
  namespace :account do
    resources :bookings, only: [] do
      resource :reviews, only: [:new, :create], controller: "bookings/reviews"
    end

    resources :exchanges, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resources :profile, only: [:edit, :update], controller: "profile"
  end

end
