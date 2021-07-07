Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'rentals#index'
  resources :rentals do
    resources :stations
  end
end
