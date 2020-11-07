# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      # resources :products
      # resources :photos

      namespace :user do
        resource :profiles, only: %i[create]
      end

      resources :products
    end
  end

  root to: 'application#index'

  match '*path', to: 'application#index', format: false, via: :get
end
