Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "pages#home"

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end
  namespace :account do
    resources :bookings, only: [] do
      resource :reviews, only: [:new, :create], controller: "bookings/reviews"
    end

    resources :exchanges, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resource :profile, only: [:show, :edit, :update], controller: "profile"
    resource :dashboard, only: :show, controller: "dashboard"
  end

end
