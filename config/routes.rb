Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/posts/:id/edit' => 'posts#edit'
  post '/posts/:id' => 'posts#update'
  get '/posts/:id' => 'posts#destroy'
  post '/posts/:post_id/comments' => 'comments#create'
  
end
