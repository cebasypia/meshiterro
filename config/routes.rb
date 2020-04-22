# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :post_images, only: %i[new create index show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'
end
