Rails.application.routes.draw do
  resources :theses
  resources :contracts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "/introduction", to: "home#introduction", as: :introduction
  get "/service", to: "home#service", as: :service
  get "/tariffs", to: "home#tariffs", as: :tariffs
end
