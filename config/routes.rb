Rails.application.routes.draw do
  resources :answers, :except => [:index, :show]
  resources :questions
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :users
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
