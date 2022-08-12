# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, format: true, constraints: { format: :json } do
    resources :products, only: [:index]
  end

  root to: 'products#index'
end
