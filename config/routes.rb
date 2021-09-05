Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :dealerships, only: [:index, :show] do
    scope module: :dealerships do
      resources :items, only: [:destroy]
      resources :vehicles, only: [:new, :create]
    end    
  end
  
  root "main#index"
end
