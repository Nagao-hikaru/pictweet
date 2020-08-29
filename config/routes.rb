Rails.application.routes.draw do
  namespace :api, { format: 'json'} do
    resources :likes, only: [:index, :create, :destroy]
  end
  devise_for :users
  root to: "tweets#index"
  resources :tweets do
    resources :comments, only: :create
    collection do
      get "search"
    end
  end
  resources :users, only: :show
end
