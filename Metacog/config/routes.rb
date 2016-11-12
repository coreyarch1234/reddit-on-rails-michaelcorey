Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :new, :create]

  get '', to: "posts#index"

  get "new", to: "posts#new"

  post 'new', to: 'posts#create'

end
