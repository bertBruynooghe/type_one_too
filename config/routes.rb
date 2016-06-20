Rails.application.routes.draw do
  devise_for :users
  resources :users
  resource :salutation, only: :show

  root to: 'salutations#show'
end
