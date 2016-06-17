Rails.application.routes.draw do
  devise_for :users
  resource :salutation, only: :show

  root to: 'salutations#show'
end
