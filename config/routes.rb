Rails.application.routes.draw do
  get 'admin' => 'admin#index'
 
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :blog_posts

  root to: 'blog#index', as: 'blog'
end
