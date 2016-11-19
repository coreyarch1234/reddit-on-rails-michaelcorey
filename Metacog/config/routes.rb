Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Routes for posts
  #Resources :posts
  # resources :posts, only: [:index, :show, :new, :create, :destroy, :edit]
  #Resources for :comments
  # resources :comments, only: [:index, :new, :create, :destroy]

  # resources :subreddits, only: [:index, :new, :show, :create, :edit, :update] do
  #     resources :posts, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  # end
  # resources :posts, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  #     resources :comments, only: [:index, :new, :create, :destroy]
  # end
  # resource :subreddits, only: [:index, :new, :show, :create, :edit, :update] do
  #     resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # end
  # resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]  do
  #     resources :comments, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # end

  resources :subreddits do
      resources :posts
  end

  resources :posts do
      resources :comments
  end

  # patch '/posts/:id/edit', to: "posts#edit"

  root to: "subreddits#index"

  # "subreddit/:subreddit_id/posts/:post_id/comments/:id", to: "comment#show"


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
