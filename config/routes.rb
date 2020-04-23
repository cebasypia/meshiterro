# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'
  devise_for :users
  resources :post_images, only: %i[new create index show destroy] do
    resource :favorites, only: %i[create destroy]
    resource :post_comments, only: %i[create]
  end
  resources :users, only: %i[show edit update]
end
