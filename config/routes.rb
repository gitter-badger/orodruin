Rails.application.routes.draw do
  devise_for :users

  namespace :blog do
    resources :posts
  end

  if Rails.env.development?
    namespace :doc do
      mount Kss::Engine => '/styles'
    end
  end
end
