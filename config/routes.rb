Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :exchanges, only: [:index, :show]

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end

end
