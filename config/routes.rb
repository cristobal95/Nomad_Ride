Rails.application.routes.draw do
  devise_for :users
 # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # CARAVANS INDEX
  # get "/", to: "caravans#index"
  root to: "caravans#index"

  post '/reservations/change_status', to: 'reservations#change_status'

  get "/caravans/:caravan_id/requests", to: "caravans#showrequests"

  get "/requests", to: "caravans#requests"

  resources :reservations, only: %i[index edit show update destroy]

  resources :caravans do
    resources :reservations, only: %i[new create]
  end

  get "/mycaravans", to: "caravans#mycaravans"


end
