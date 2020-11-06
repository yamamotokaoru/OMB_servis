Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#top'
resources :blogs ,only: [:index, :new, :create, :show, :destroy, :edit, :update]
resources :users, only: [:show]
end
