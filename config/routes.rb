Rails.application.routes.draw do
  
  get 'admin' => 'admin#index'
  get 'users/:id/blog_posts' => 'users#blog_posts', :as => :user_posts

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :blog_posts do
    resources :comments, :only => [:create]
  end

  resources :users
  resources :blog_posts

  root to: 'blog#index', as: 'blog'
end
