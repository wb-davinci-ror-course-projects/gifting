Rails.application.routes.draw do

  resources :gifters, only: [:new, :create, :edit, :update, :destroy]

  resources :giftees

  resources :occasions

  root 'occasions#upcoming_occasions'

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#start'
  delete 'logout' => 'sessions#destroy'

end
