Rails.application.routes.draw do
  devise_for :users

  namespace :blog do
    resources :posts
  end
end
