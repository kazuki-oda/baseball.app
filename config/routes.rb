Rails.application.routes.draw do
  devise_for :users
  root  "groups#index"
  resources :users, only: [:new, :edit, :update, :destroy]
  resources :groups, only: [:index] do
    resources :messages, only: [:index, :create] do 
      resources :comments, only: [:create]
    end
  end 
end
