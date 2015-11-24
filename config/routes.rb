Rails.application.routes.draw do

  root to: "home#index"

  resources :exchanges, only: [:index, :show]

end
