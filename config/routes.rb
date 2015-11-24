Rails.application.routes.draw do

  resources :exchanges, only: [:index, :show]

end
