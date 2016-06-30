Rails.application.routes.draw do
  get 'blog/index'
  
  #get 'blog_posts/new'
  resources :users
  resources :blog_post

  root to: 'blog#index', as: 'blog'
end
