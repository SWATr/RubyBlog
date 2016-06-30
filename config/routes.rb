Rails.application.routes.draw do
<<<<<<< HEAD
  get 'blog/index'
  
  #get 'blog_posts/new'
=======
 get 'admin' => 'admin#index'
 
 controller :sessions do
   get 'login' => :new
   post 'login' => :create
   delete 'logout' => :destroy
 end


>>>>>>> 20782a70c2721567d7f83065902ac699677abe30
  resources :users
  resources :blog_post

  root to: 'blog#index', as: 'blog'
end
