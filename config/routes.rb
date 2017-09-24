Rails.application.routes.draw do
resources :cartas, only: :index
get 'cartas/:id/details', to: 'cartas#details', as: 'card_details'
root to: 'cartas#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
