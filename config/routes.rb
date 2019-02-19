Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'

  # Order matters. Routes are matched from top to bottom
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  patch 'restaurants/:id', to: 'restaurants#update'

  delete 'restaurants/:id', to: 'restaurants#destroy'

  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # Tomorrow
  # resources :restaurants
end
