Rails.application.routes.draw do
  devise_for :users

  namespace :blog do
    resources :posts

    root 'posts#index'
  end

  mount Orodruin::API => '/api'

  root to: 'blog/posts#index'
end
