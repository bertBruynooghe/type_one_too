Rails.application.routes.draw do
  resources :mail_configs do
    resource :test, only: :create, controller: :mail_config_tests
    resources :users, only: :index
  end
  devise_for :users
  resources :users
  resource :salutation, only: :show

  root to: 'salutations#show'
end
