Rails.application.routes.draw do
  mount Kss::Engine => '/kss' if Rails.env.development?
  devise_for :users

  namespace :blog do
    resources :posts
  end
end
