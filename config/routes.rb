Rails.application.routes.draw do
  get 'blog/index'

  resources :users
  resources :blog_post

  root to: 'blog#index', as: 'blog'
end
