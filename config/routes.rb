Rails.application.routes.draw do
  get 'products/index'
resources :products, only: :index 
resources :cartas, only: :index

get 'cartas/:id/details', to: 'cartas#details', as: 'card_details'
root to: 'products#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
