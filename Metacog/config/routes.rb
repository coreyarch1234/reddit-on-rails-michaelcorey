Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Routes for posts
  resources :posts, only: [:index, :show, :new, :create, :destroy, :edit]
  # resources :posts

  get '', to: "posts#index"

  get "new", to: "posts#new"

  post 'new', to: 'posts#create'

  get 'posts/:id', to: 'posts#show'

  get 'post/:id/edit', to: 'posts#edit'

  patch 'posts/:id', to: 'posts#update'

  #Routes for delete

  # delete '/post/:id', to: 'posts#destroy'





end
