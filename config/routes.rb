Rails.application.routes.draw do
  devise_for :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'matches#index'

  resources :matches
  resources :rounds
end
