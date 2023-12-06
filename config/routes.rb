Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :reciipes do
    resources :ingredients
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
end
