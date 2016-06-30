Rails.application.routes.draw do
  get 'blog/index'
  
  #get 'blog_posts/new'
  get 'admin' => 'admin#index'
 
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :blog_post

  root to: 'blog#index', as: 'blog'
end
