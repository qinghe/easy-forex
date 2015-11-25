Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :exchanges, only: [:index, :show]

  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end

end
