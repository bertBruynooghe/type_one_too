Rails.application.routes.draw do
  resources :mail_configs
  devise_for :users
  resources :users
  resource :salutation, only: :show

  root to: 'salutations#show'
end
