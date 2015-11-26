Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end
  namespace :account do
    resources :exchanges, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

end
