Rails.application.routes.draw do
  devise_for :users
 # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # CARAVANS INDEX
 # get "/", to: "caravans#index"
  root to: "caravans#index"

  resources :caravans, only: %i[show new create] do
    resources :reservations, only: %i[new create]
  end

  resources :reservations, only: %i[index show edit update]
end