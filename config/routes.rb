# frozen_string_literal: true

Rails.application.routes.draw do
  resources :politician_approvals
  resources :party_approvals
  resources :reposts
  resources :likes
  resources :replies
  resources :comments
  resources :posts
  resources :political_followers
  resources :party_followers
  resources :previous_parties
  resources :politicians
  resources :party_names
  resources :chairs
  resources :parties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
