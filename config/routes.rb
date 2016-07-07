Rails.application.routes.draw do
  
  
  resources :fullposts
 
  get 'admin' => 'admin#index'
  get 'users/:id/blog_posts' => 'users#blog_posts', :as => :user_posts

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :blog_posts do
    resources :blog_comments, :only => [:create]
  end

  resources :users
  resources :blog_posts
  resources :fullposts

  
  get '/news' => 'pages#news'
  get '/videos' => 'pages#videos'
  get '/diy' => 'pages#diy'
  get '/food' => 'pages#food'

  root to: 'blog#index', as: 'blog'
end
