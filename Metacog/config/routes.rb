Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Routes for posts
  #Resources :posts
  # resources :posts, only: [:index, :show, :new, :create, :destroy, :edit]
  #Resources for :comments
  # resources :comments, only: [:index, :new, :create, :destroy]

  resources :posts, only: [:index, :show, :new, :create, :destroy, :edit] do
      resources :comments, only: [:index, :new, :create, :destroy]
  end

  root to: "posts#index"

  # get '', to: "posts#index"
  #
  # get "new", to: "posts#new"
  #
  # post 'new', to: 'posts#create'
  #
  # get 'posts/:id', to: 'posts#show'
  #
  # get 'post/:id/edit', to: 'posts#edit'
  #
  # patch 'posts/:id', to: 'posts#update'
  #
  # get 'comments', to: 'comments#index'
  #
  # post 'comment', to: "comments#create"
  #
  # get 'posts/:id/newcomment', to: "comments#new"
  #
  # post 'posts/:id/newcomment', to: "comments#create", as: 'new_comment_path'

  #Routes for delete

  # delete '/post/:id', to: 'posts#destroy'





end
