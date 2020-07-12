Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  root :to => "application#index"
  match "*path", to: "application#index", format: false, via: :get
end
