Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:create, :index, :show, :edit, :update, :destroy, :new]
  resources :users, only: [:show, :edit, :update, :index, :create]
  resources :categorise, only: [:index, :show]
end
