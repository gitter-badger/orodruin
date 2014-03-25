Rails.application.routes.draw do
  devise_for :users

  namespace :blog do
    resources :posts

    root 'posts#index'
  end

  if Rails.env.development?
    namespace :doc do
      mount Kss::Engine => '/styles'
    end
  end

  root to: 'blog/posts#index'
end
